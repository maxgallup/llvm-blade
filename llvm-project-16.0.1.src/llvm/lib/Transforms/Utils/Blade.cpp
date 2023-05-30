//===-- Blade.cpp - -------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Utils/Blade.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/Debug.h"


#include <queue>

using namespace llvm;

#define DEBUG_TYPE "blade"
#define BLADE_DEBUG 1
#define E(X) errs() << "🔴 " << X << "\n"
#define D(X) if(BLADE_DEBUG) errs() << "🟣 " << X << "\n"
#define S(X) if(BLADE_DEBUG) errs() << "🟢 " << X << "\n"
#define N(X) if(BLADE_DEBUG) errs() << "   " << X << "\n"
#define RAW(X) if(BLADE_DEBUG) errs() << X

#define FULL_SEARCH 0


class BladeNode {
  public:
    int id = 0;
    Instruction* I;
    BladeNode* parent;
    SmallVector<BladeNode*, 16> *children;
    BladeNode(Instruction *newI, BladeNode *newParent) {
      I = newI;
      parent = newParent;
      children = new SmallVector<BladeNode*, 16>();
    };
};


STATISTIC(NumTransient, "Number of transient Nodes added.");
STATISTIC(NumStable, "Number of stable Nodes added.");
STATISTIC(NumLeaks, "Total number of distinct paths that leak secrets.");


/// @brief Returns true if the instruction is makred as Stable.
bool isStableInstruction(Instruction *Inst) {
  return Inst->hasMetadata("BLADE-S");
}


/// @brief Returns true if the instruction is makred as Transient.
bool isTransientInstruction(Instruction *Inst) {
  return Inst->hasMetadata("BLADE-T");
}


/// @brief Mark instruction idempotently as Stable
void markInstructionStable(Instruction *Inst) {
  if (!Inst->hasMetadata("BLADE-S")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "Blade Stable"));
    Inst->setMetadata("BLADE-S", N);
    NumStable++;
  }
}


/// @brief Mark instruction idempotently as Transient.
void markInstructionTransient(Instruction *Inst) {
  if (!Inst->hasMetadata("BLADE-T")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "Blade Transient"));
    Inst->setMetadata("BLADE-T", N);
    NumTransient++;
  }
}


/// @brief Labels the instruction as Transient if it's a Load or Call. 
/// If the instruction is used as an index for a load operation, it will be marked Stable.
void markInstruction(Instruction *I) {
  if (I->getOpcode() == Instruction::Load || I->getOpcode() == Instruction::Call) {
    markInstructionTransient(I);
  }

  for (User *U : I->users()) {
    if (Instruction *Inst = dyn_cast<Instruction>(U)) {
      if (Inst->getOpcode() == Instruction::Load) {
        markInstructionStable(I);
      }
    }
  }
}


/// @brief [NOT USED] Propagates the Transient label down to all users of a transient inst.
/// @param I Transient Instruction
void propgateMarks(Instruction *I) {
  if (I->hasMetadata("BLADE-T")) {
    for (User *U : I->users()) {
      if (Instruction *II = dyn_cast<Instruction>(U)) {
        markInstructionTransient(II);
      }
    }
  }
}


/// @brief Traverse graph in Post-Order and delete (free) all nodes to prevent a memory leak.
/// @param B Root node of graph.
void freeBladeNodes(BladeNode *B) {
  if (B->children->empty()) {
    delete(B->children);
    delete(B);
    return;
  }

  for (BladeNode *node : *B->children) {
    freeBladeNodes(node);
  }

  delete(B->children);
  delete(B);
  return;
}


/// @brief Builds the DAG of BladeNodes that make up all Def-Use chains throughout the program,
/// we then save the stable leaf BladeNodes into a vector so that we can construct the correct
/// def-use chain going bottom up.
/// @param I Instruction whose users will turn into children.
/// @param parent Pointer to parent instruction, starting transient instruction has NULL.
/// @param stable_insts Collection of stable instruction leaf nodes that we are interested in.
void findStableRec(Instruction *I, BladeNode *parent, SmallVector<BladeNode*, 16> *stable_insts) {
  for (User *U : I->users()) {
    if (Instruction *current_inst = dyn_cast<Instruction>(U)) {
      
      // Here we connect the new node to its parent via the constructor, and we make sure that
      // the parent is connected to its child via the `children` vector.
      auto new_node = new BladeNode(current_inst, parent);
      parent->children->push_back(new_node);

      // If we encounter a stable instruction, there is a leak. We can simply save this node into
      // a vector and then traverse the graph bottom up via the `parent` pointer to know the exact
      // def-use chain of the leak.
      if (isStableInstruction(current_inst)) {
        stable_insts->push_back(new_node);
      }

      // Recursive call with next instruction and the new node as the parent.
      findStableRec(current_inst, new_node, stable_insts);
    }
  }
}


/// @brief Walks through the Def-Use chain of the given instruction to identify all paths
/// from T->S. A path is given by a vector of instructions from stable instruction to
/// transient. These vectors are then collected into a 2D vector.
/// @param I The transient instruction to start looking from.
/// @param leaky_paths Collection of all secret leaking paths.
void gatherLeaks(Instruction *I, SmallVector<SmallVector<Instruction*, 16>, 16> *leaky_paths) {

  // Since a leak can only come from a transient instruction, we can ignore all others
  if (isTransientInstruction(I)) {

    // For this instruction we will save all paths (made up via BladeNodes) that end
    // in a stable instruction.
    auto stable_instructions = SmallVector<BladeNode*, 16>();
    auto start = new BladeNode(I, NULL);
    findStableRec(I, start, &stable_instructions);

    // Since we store the parent of each BladeNode, we can traverse the graph bottom 
    // up from the stable instruction to the start, leaving us with only those 
    // instructions directly part of the def-use chain.
    for (BladeNode *B : stable_instructions) {
      auto a_leaky_path = SmallVector<Instruction*, 16>();
      BladeNode* current = B;
      while (current->parent) {
        a_leaky_path.push_back(current->I);
        // a_leaky_path.push_back(current->I);
        current = current->parent;
      }
      a_leaky_path.push_back(I);
      // a_leaky_path.push_back(I);
      leaky_paths->push_back(a_leaky_path);
    }

    // Since we've accumulated all BladeNodes on the stack and we've alread saved the leaky path
    // of instructions, we must free all nodes in Post-Order traversal.
    freeBladeNodes(start);

  }
}


/// @brief Pretty print all instructions that make up the leaky paths.
/// @param leaky_paths 2D Vector of instruction pointers where the stable instrction comes first.
void printLeakyPaths(SmallVector<SmallVector<Instruction*, 16>, 16> *leaky_paths) {
  int count = 1;
  for (SmallVector<Instruction*, 16> S : *leaky_paths) {
    S("\tLeak " << count);
    for (Instruction* I : S) {
      D("\t\t" << *I);
    }
    count++;
  }
}


void printSummary() {
  S("--- Summary ---");
  N("\tTotal Leaks: " << NumLeaks);
  N("\tTransient Marks: " << NumTransient);
  N("\tStable Marks: " << NumStable);
}


void printCutSet(SmallSetVector<Instruction*, 16> *cutset) {
  S("--- Cutset ---");
  for (auto I : *cutset) {
    N("\t" << *I);
  }
}


void freeGraph(int **graph, int length) {
  for (int i = 0; i < length; i++) {
    free(graph[i]);
  }
  free(graph);
}


int getInstructionIndex(SmallSetVector<Instruction*, 16> *set, Instruction *I) {
  // Number of instructions start counting from 1, so that we can add a Source Node
  // at index 0 of the final graph (and a sink node appended to the end as well)
  int index = 1;
  for (auto inst : *set) {
    if (inst == I) {
      return index;
    }
    index++;
  }
  return -1;
}


void printGraph(int **graph, int size) {
  for (int row = 0; row < size; row++) {
    RAW(row << ":\t[");
    for (int col = 0; col < size; col++) {
      RAW(graph[row][col] << ", ");
    }
    RAW("]\n");
  }
}

void printGraph(int **graph, bool visited[], int size) {
  for (int row = 0; row < size; row++) {
    if (visited[row]) {
      RAW("\033[31;1;4m" << row << ":\t[");
      // "\033[31;1;4mHello\033[0m"
    } else {
      RAW(row << ":\t[");
    }
    for (int col = 0; col < size; col++) {
      RAW(graph[row][col] << ", ");
    }
    RAW("]\n\033[0m");
  }
}


/// @brief Traverses each leaky path in reverse order so that transient instructions come first
/// and stable instructions come last. The index of each instruction is its ID.
SmallSetVector<Instruction*, 16> aggregateInstructions(SmallVector<SmallVector<Instruction*,16>, 16> *leaky_paths) {
  // Iterate over each path in reverse order since sources (T) are at the back and
  // accumulate all instructions into a set and create Instruction -> ID mapping.
  auto mappings = SmallSetVector<Instruction*, 16>();
  for (SmallVector<Instruction*, 16> path : *leaky_paths) {
    for (SmallVector<Instruction*, 16>::reverse_iterator it = path.rbegin(); it != path.rend(); ++it) {
      auto I = *it;
      mappings.insert(I);
    }
  }

  return mappings;
}


/// @brief This must data structure must be freed, use calloc to allocate a 2D array.
int **allocateGraphDS(int num_vertices) {
  int **graph = (int **)calloc(num_vertices, sizeof(int*));
  for (int i = 0; i < num_vertices; i++) {
    graph[i] = (int *)calloc(num_vertices, sizeof(int));
  }
  return graph;
}


void populateGraph(SmallVector<SmallVector<Instruction*, 16>, 16> *leaky_paths, SmallSetVector<Instruction*, 16> *mappings, int **graph, int num_vertices, int og_num_vertices) {

  int **og_graph = allocateGraphDS(og_num_vertices);
  
  for (SmallVector<Instruction*, 16> path : *leaky_paths) {
    for (int i = path.size() - 1; i >= 1; i--) {
      Instruction *current_instruction = path[i];
      Instruction *next_instruction = path[i-1];
      int current_index = getInstructionIndex(mappings, current_instruction);
      int next_index = getInstructionIndex(mappings, next_instruction);
      og_graph[current_index][next_index] = 1;
    }
  }

  for (Instruction *I : *mappings) {
    // Link the Source Node to all Transient instructions
    // and the Sink node to all Stable instructions.
    if (isTransientInstruction(I)) {
      auto i = getInstructionIndex(mappings, I);
      og_graph[0][i] = 1;
    } else if (isStableInstruction(I)) {
      auto i = getInstructionIndex(mappings, I);
      og_graph[i][og_num_vertices - 1] = 1;
    }
  }

  for (int row = 1; row < og_num_vertices - 1; row++) {
    int target_row = (row * 2) - 1;

    graph[target_row][target_row + 1] = 1;

    for (int col = 0; col < og_num_vertices; col++) {
      if (og_graph[row][col] == 1) {
        graph[target_row + 1][(col * 2) - 1] = 1;
      }
    }
  }

  for (int col = 0; col < og_num_vertices - 1; col++) {
    if (og_graph[0][col] == 1) {
      graph[0][(col * 2) - 1] = 1;
    }
  }


  freeGraph(og_graph, og_num_vertices);
}




int bfs(int **rGraph, int s, int t, int parent[], int num_vertices) {
    bool *visited = (bool*) calloc(num_vertices, sizeof(bool));
 
    std::queue<int> q;
    q.push(s);
    visited[s] = true;
    parent[s] = -1;
 
    while (!q.empty()){
        int u = q.front();
        q.pop();
 
        for (int v=0; v<num_vertices; v++){
            if (visited[v]==false && rGraph[u][v] > 0){
                q.push(v);
                parent[v] = u;
                visited[v] = true;
            }
        }
    }

    auto res = visited[t] == true;
    free(visited);
  
    return res;
}


void dfs(int **rGraph, int s, bool visited[], int num_vertices) {
  visited[s] = true;
  for (int i = 0; i < num_vertices; i++)
    if (rGraph[s][i] && !visited[i])
      dfs(rGraph, i, visited, num_vertices);
}


SmallSetVector<int, 16> minCut(int **graph, int source, int sink, int num_vertices) {
    int u, v;
    int **rGraph = allocateGraphDS(num_vertices);
    for (u = 0; u < num_vertices; u++)
        for (v = 0; v < num_vertices; v++)
             rGraph[u][v] = graph[u][v];
    
    int *parent = (int*) calloc(num_vertices, sizeof(int));    
 
    while (bfs(rGraph, source, sink, parent, num_vertices)) {
        int path_flow = INT_MAX;
        for (v = sink; v != source; v = parent[v]) {
            u = parent[v];
            path_flow = std::min(path_flow, rGraph[u][v]);
        }
 
        // update residual capacities of the edges and reverse edges
        // along the path
        for (v = sink; v != source; v=parent[v]) {
            u = parent[v];
            rGraph[u][v] -= path_flow;
            rGraph[v][u] += path_flow;
        }
    }
  
    free(parent);

    // TODO optimize by taking r_graph = transpose(graph)
 
    bool *visited = (bool*) calloc(num_vertices, sizeof(bool));
    dfs(rGraph, source, visited, num_vertices);

    // printGraph(graph, visited, num_vertices);

    auto cutset_ids = SmallSetVector<int, 16>();
 
    // Print all edges that are from a reachable vertex to
    // non-reachable vertex in the original graph
    for (int i = 0; i < num_vertices; i++) {
      for (int j = 0; j < num_vertices; j++) {
         if (visited[i] && !visited[j] && graph[i][j]) {
            cutset_ids.insert((int)j / 2);
         }
      }
    }

    free(visited);
    freeGraph(rGraph, num_vertices);

    return cutset_ids;
}


/// @brief Runs a slimmed down version of Ford-Fulkerson's Max Flow Min Cut Algorithm to find optimal cuts.
/// @return The set of instructions where a protect statement must be place infront of to prevent secret leaks.
SmallSetVector<Instruction*, 16> findCutSet(SmallVector<SmallVector<Instruction*,16>, 16> *leaky_paths) {
  
  // We accumulate all instructions into a set and assign them a 
  // unique ID based on their index position within the set.
  SmallSetVector<Instruction*, 16> mappings = aggregateInstructions(leaky_paths);
  
  // The total number of vertices in the graph will be `size + 2` because of the 
  // Source and Sink node that get added. We differentiate between the "original"
  // number of vertices, and those that we perform the min cut algorithm on, since
  // we require each vertex to be extended with an artifical dummy vertex.
  int og_num_vertices = mappings.size() + 2;
  int num_vertices = (mappings.size() * 2) + 2;

  // We represent the graph in the form of a matrix where a 1 in row i and column j
  // indicates there is an edge from vertex i to vertex j.
  int **graph = allocateGraphDS(num_vertices);
  populateGraph(leaky_paths, &mappings, graph, num_vertices, og_num_vertices);

  // Run Ford-Fulkerson's Max Flow Min Cut algorithm to find which instructions need
  // to be protected to prevent leaks.
  auto cutset_ids = minCut(graph, 0, num_vertices - 1, num_vertices);
  auto cutset = SmallSetVector<Instruction*, 16>();

  for (auto n : cutset_ids) {
    cutset.insert(mappings[n]);
  }

  freeGraph(graph, num_vertices);

  return cutset;
}



/// @brief Main entry point for the Blade optimization pass.
/// @return Currently not considering return value - TODO will have to changed preserved analysis
PreservedAnalyses BladePass::run(Module &M, ModuleAnalysisManager &AM) {
  // First pass to add marks 
  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        markInstruction(&I);
        // propgateMarks(&I);
      }
    }
  }

  auto leaky_paths = SmallVector<SmallVector<Instruction*, 16>, 16>();
  // Second pass to collect all secret leaking paths into leaky_paths
  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        gatherLeaks(&I, &leaky_paths);
      }
    }
  }

  NumLeaks = leaky_paths.size();
  // printLeakyPaths(&leaky_paths);
  printSummary();

  auto cutset = findCutSet(&leaky_paths);
  printCutSet(&cutset);


  return PreservedAnalyses::all();
}

