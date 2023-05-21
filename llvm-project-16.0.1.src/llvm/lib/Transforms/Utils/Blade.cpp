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
#include "llvm/Support/Debug.h"

using namespace llvm;

#define DEBUG_TYPE "blade"
#define BLADE_DEBUG 1
#define E(X) errs() << "🔴 " << X << "\n"
#define D(X) if(BLADE_DEBUG) errs() << "🟣 " << X << "\n"
#define S(X) if(BLADE_DEBUG) errs() << "🟢 " << X << "\n"

#define FULL_SEARCH 0


class BladeNode {
  public:
    Instruction* I;
    BladeNode* parent;
    SmallVector<BladeNode*, 16> *children;
    BladeNode(Instruction *newI, BladeNode *newParent) {
      I = newI;
      parent = newParent;
      children = new SmallVector<BladeNode*, 16>();
    };
};



// STATISTIC(NumTransient, "Number of transient Nodes added");
// STATISTIC(NumStable, "Number of stable Nodes added");

bool isStableInstruction(Instruction *Inst) {
  return Inst->hasMetadata("BLADE-S");
}

bool isTransientInstruction(Instruction *Inst) {
  return Inst->hasMetadata("BLADE-T");
}

bool isLeakyInstruction(Instruction *Inst) {
  return Inst->hasMetadata("BLADE-S") && Inst->hasMetadata("BLADE-T");
}

void markInstructionStable(Instruction *Inst) {
  if (!Inst->hasMetadata("BLADE-S")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "Blade Stable"));
    Inst->setMetadata("BLADE-S", N);
  }
}

void markInstructionTransient(Instruction *Inst) {
  if (!Inst->hasMetadata("BLADE-T")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "Blade Transient"));
    Inst->setMetadata("BLADE-T", N);
  }
}

void markInstructions(Instruction *I) {
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

void propgateMarks(Instruction *I) {
  if (I->hasMetadata("BLADE-T")) {
    // propgate transient to all users
    for (User *U : I->users()) {
      if (Instruction *II = dyn_cast<Instruction>(U)) {
        markInstructionTransient(II);
      }
    }
  }
}

void printUsers(Instruction *I) {
  for (User *U : I->users()) {
    if (Instruction *II = dyn_cast<Instruction>(U)) {
      if (isStableInstruction(II)) {
        D("\tU: " << *II);
      }
      printUsers(II);
    } else {
      E("unable to cast User to Instruction: " << *U);
    }
  }
}


void printSecretLeakMsg(Instruction *Itrans, Instruction *Istable) {
  D("---Leak Found---");
  if (Itrans->getName().empty()) {
    D("   From: " << *Itrans);
  } else {
    D("   From: " << Itrans->getName());
  }

  if (Istable->getName().empty()) {
    D("   To:   " << *Istable);
  } else {
    D("   To:   " << Istable->getName());
  }
}


void identifyLeakRec(Instruction *Istart, Instruction *Icurrent, SmallVector<SmallVector<Instruction*, 16>, 16> *leakyPaths, SmallVector<Instruction*, 16> *aLeakyPath) {
  for (User *U : Icurrent->users()) {
    if (Instruction *II = dyn_cast<Instruction>(U)) {
      aLeakyPath->push_back(II);
      if (isStableInstruction(II)) {
        // printSecretLeakMsg(Istart, II);
        leakyPaths->push_back(*aLeakyPath);
        
        if (FULL_SEARCH) continue;
      }
      identifyLeakRec(Istart, II, leakyPaths, aLeakyPath);
    } else {
      E("unable to cast User to Instruction: " << *U);
    }
  }
}


void identifyLeak(Instruction *I, SmallVector<SmallVector<Instruction*, 16>, 16> *leakyPaths) {
  if (isTransientInstruction(I)) {
    auto aLeakyPath = SmallVector<Instruction*, 16>();
    aLeakyPath.push_back(I);
    for (User *U : I->users()) {
      if (Instruction *II = dyn_cast<Instruction>(U)) {
        aLeakyPath.push_back(II);
        if (isStableInstruction(II)) {
          // printSecretLeakMsg(I, II);
          leakyPaths->push_back(aLeakyPath);
          
          if (FULL_SEARCH) continue;
        }
        
        identifyLeakRec(I, II, leakyPaths, &aLeakyPath);
      } else {
        E("unable to cast User to Instruction: " << *U);
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
    if (Instruction *II = dyn_cast<Instruction>(U)) {
      auto user = new BladeNode(II, parent);
      parent->children->push_back(user);

      if (isStableInstruction(II)) {
        stable_insts->push_back(user);
      }

      findStableRec(II, user, stable_insts);
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

int print_leaky_paths(SmallVector<SmallVector<Instruction*, 16>, 16> *leaky_paths) {
  int count = 0;
  for (SmallVector<Instruction*, 16> S : *leaky_paths) {
    count++;
    S("\tLeak " << count);
    for (Instruction* I : S) {
      D("\t\t" << *I);
    }
  }
  return count;
}

PreservedAnalyses BladePass::run(Module &M, ModuleAnalysisManager &AM) {
  // First pass to add marks 
  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        markInstructions(&I);
        // propgateMarks(&I);
      }
    }
  }

  auto leaky_paths = SmallVector<SmallVector<Instruction*, 16>, 16>();
  // Second pass to collect all secret leaking paths into leaky_paths
  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        // identifyLeak(&I, &leaky_paths);
        // identifyLeak2(&I, &leaky_paths);
        gatherLeaks(&I, &leaky_paths);
      }
    }
  }

  int total_leaky_paths = print_leaky_paths(&leaky_paths);

  S("------------------------");
  S("  DONE, Total leaks: " << total_leaky_paths);
  S("------------------------");

  return PreservedAnalyses::all();
}
