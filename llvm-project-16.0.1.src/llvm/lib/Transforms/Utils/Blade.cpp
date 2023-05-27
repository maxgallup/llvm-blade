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
        current = current->parent;
      }
      a_leaky_path.push_back(I);
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
  for (SmallVector<Instruction*, 16> S : *leaky_paths) {
    NumLeaks++;
    S("\tLeak " << NumLeaks);
    for (Instruction* I : S) {
      D("\t\t" << *I);
    }
  }
}


void printSummary() {
  S("--- Summary ---");
  N("\tTotal Leaks: " << NumLeaks);
  N("\tTransient Marks: " << NumTransient);
  N("\tStable Marks: " << NumStable);
}


SmallSetVector<Instruction*, 16> findCutSet(SmallVector<SmallVector<Instruction*,16>, 16> *leaky_paths) {

  auto edges_transient = SmallSetVector<Instruction*, 16>();
  auto edges_stable = SmallSetVector<Instruction*, 16>();

  for (SmallVector<Instruction*, 16> S : *leaky_paths) {
    auto stable_inst = S.front();
    auto trans_inst = S.back();

    edges_stable.insert(stable_inst);
    edges_transient.insert(trans_inst);

  }

  auto num_edges_stable = edges_stable.size();
  auto num_edges_trans = edges_transient.size();

  SmallSetVector<Instruction*, 16> *cutset;


  if (num_edges_trans <= num_edges_stable) {
    cutset = &edges_transient;
  } else {
    cutset = &edges_stable;
  }

  S("\tFinal Cutset:");
  for (Instruction *I : *cutset) {
    N("\t\tcut: " << *I);
  }

  return *cutset;
}


void readOffNodes(BladeNode *B) {

  if (B->I == NULL) {
    D("root:" << "\n\t>>> " << B->id);
  } else {
    D(*B->I << "\n\t>>> " << B->id << "\n\tparent id: " << B->parent->id);
  }

  if (B->children->empty()) { 
    return;
  }

  for (BladeNode *node : *B->children) {
    readOffNodes(node);
  }

  return;
}


void insertBladeNode(BladeNode *root, SmallVector<Instruction*, 16> *path, int inst_idx, int *id_counter) {

  auto current = root;
  Instruction *last_inst;
  for (int i = path->size() - 1; i >= inst_idx; i--) {
    last_inst = (*path)[i];
    // D("Inst: " << *last_inst);

    for (BladeNode *child : *current->children) {
      if (child->I == last_inst) {
        current = child;
        break;
      }
    }
  }

  if (current->I != NULL) {
    // D("current: " << *current->I << "\n\tid: " << current->id);
  } else {
    // D("current is root" << "\n\tid: " << current->id);
  }

  if (current->I == last_inst) {
    // D("node already exists, skipping");
    // D("------------");
    return;
  }
  

  // D("inserting");
  (*id_counter)++;
  auto new_node = new BladeNode(last_inst, current);
  new_node->id = *id_counter;
  current->children->push_back(new_node);
      
  
  // D("------------");
}


SmallSetVector<Instruction*, 16> findCutSet2(SmallVector<SmallVector<Instruction*,16>, 16> *leaky_paths) {

  // Transient Root of tree with id already set to 0
  auto root = new BladeNode(NULL, NULL);
  int id_counter = 0;
  
  // Create fully merged dependency chain made up of all leaky paths combined 
  for (SmallVector<Instruction*, 16> path : *leaky_paths) {
    // BladeNode *current = root;


    for (int i = path.size() - 1; i >= 0; i--) {
      // auto some_inst = path[i];
      // D("Inst: " << *some_inst);
      insertBladeNode(root, &path, i, &id_counter);
    }

    // for (SmallVector<Instruction*, 16>::reverse_iterator it = path.rbegin(); it != path.rend(); ++it) {
    //   auto I = *it;

    //   for (BladeNode *child : *current->children) {
    //     if (I == child->I) {
    //       break;
    //     }
    //   }

    //   id_counter++;
    //   auto new_node = new BladeNode(I, current);
    //   new_node->id = id_counter;
    //   current->children->push_back(new_node);
    //   current = new_node;
    // }
  }

  // todo add stable node connection

  readOffNodes(root);

  freeBladeNodes(root);


  return SmallSetVector<Instruction*, 16>();
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


SmallSetVector<Instruction*, 16> findCutSet3(SmallVector<SmallVector<Instruction*,16>, 16> *leaky_paths) {

  // Iterate over each path in reverse order since sources (T) are at the back and
  // accumulate all instructions into a set and create Instruction -> ID mapping.
  auto mappings = SmallSetVector<Instruction*, 16>();
  for (SmallVector<Instruction*, 16> path : *leaky_paths) {
    for (SmallVector<Instruction*, 16>::reverse_iterator it = path.rbegin(); it != path.rend(); ++it) {
      auto I = *it;
      mappings.insert(I);
    }
  }

  // Add Transient and Stable Node so that there is only a single Source (T) and Sink (s)

  for (Instruction *I : mappings) {
    auto n = getInstructionIndex(&mappings, I);
    D(n << " " << *I);
  }

  // ---- Allocate 2D array to store graph information
  int num_vertices = mappings.size() + 2; // must also Source and Sink Node
  int **graph = (int **)calloc(num_vertices, sizeof(int*));
  for (int i = 0; i < num_vertices; i++) {
    graph[i] = (int *)calloc(num_vertices, sizeof(int));
  }
  // ----


  for (SmallVector<Instruction*, 16> path : *leaky_paths) {
    for (int i = path.size() - 1; i >= 1; i--) {
      Instruction *current_instruction = path[i];
      Instruction *next_instruction = path[i-1];
      int current_index = getInstructionIndex(&mappings, current_instruction);
      int next_index = getInstructionIndex(&mappings, next_instruction);
      graph[current_index][next_index] = 1;
    }
  }

  for (Instruction *I : mappings) {
    // Link the Source Node to all Transient instructions
    // and the Sink node to all Stable instructions.
    if (isTransientInstruction(I)) {
      auto i = getInstructionIndex(&mappings, I);
      graph[0][i] = 1;
    } else if (isStableInstruction(I)) {
      auto i = getInstructionIndex(&mappings, I);
      graph[i][num_vertices - 1] = 1;
    }
  }

  D("printing matrix");

  for (int row = 0; row < num_vertices; row++) {
    RAW(row << ":\t[");
    for (int col = 0; col < num_vertices; col++) {
      RAW(graph[row][col] << ", ");
    }
    RAW("]\n");
  }

  freeGraph(graph, num_vertices);

 

  // return mappings;

  return SmallSetVector<Instruction*, 16>();
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

  printLeakyPaths(&leaky_paths);

  printSummary();

  // auto cutset = findCutSet(&leaky_paths); // Not correct, must implement Max Flow Min Cut
  // auto cutset = findCutSet2(&leaky_paths); // constructing it myself is too complicated- too many edge cases
  auto cutset = findCutSet3(&leaky_paths);


  

  return PreservedAnalyses::all();
}

