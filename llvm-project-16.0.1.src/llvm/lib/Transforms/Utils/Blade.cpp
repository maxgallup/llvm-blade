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
    SmallVector<BladeNode*, 16> *nodes;
    BladeNode(Instruction *newI, BladeNode *newParent) {
      I = newI;
      parent = newParent;
      nodes = new SmallVector<BladeNode*, 16>();
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



void somethingRecursive(Instruction *I) {  

  for (User *U : I->users()) {
    if (Instruction *II = dyn_cast<Instruction>(U)) {
      if (isStableInstruction(II)) {
        
        return;
      }
      
      // somethingRecursive(II);
    }
  }
  return;
}


void identifyLeak2(Instruction *I, SmallVector<SmallVector<Instruction*, 16>, 16> *leakypaths) {


  if (isTransientInstruction(I)) {
    D("Start: " << *I);
    somethingRecursive(I);
  }

}


// Walk through the entire graph and free all nodes
void freeBladeNodes(BladeNode *B) {
  if (B->nodes->empty()) {
    D("freeing: " << *B->I);
    delete(B->nodes);
    delete(B);
    return;
  }

  for (BladeNode *node : *B->nodes) {
    freeBladeNodes(node);
  }

}


void findStableRec(Instruction *I, BladeNode *parent, SmallVector<BladeNode*, 16> *si) {
  for (User *U : I->users()) {
    if (Instruction *II = dyn_cast<Instruction>(U)) {
      auto user = new BladeNode(II, parent);
      parent->nodes->push_back(user);

      if (isStableInstruction(II)) {
        si->push_back(user);
      }

      findStableRec(II, user, si);
    }
  }
}


void identifyLeak3(Instruction *I, SmallVector<SmallVector<Instruction*, 16>, 16> *leakypaths) {

  if (isTransientInstruction(I)) {
    auto stable_instructions = SmallVector<BladeNode*, 16>();
    auto start = new BladeNode(I, NULL);
    findStableRec(I, start, &stable_instructions);

    for (BladeNode *B : stable_instructions) {
      D("Stable Inst: " << *B->I);
      // auto a_leaky_path = SmallVector<Instruction*, 16>();
      // BladeNode* current = B;
      // while (current->parent) {
      //   a_leaky_path.push_back(current->I);
      //   current = current->parent;
      // }
      // leakypaths->push_back(a_leaky_path);
    }

    freeBladeNodes(start);

  }
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

  auto leakyPaths = SmallVector<SmallVector<Instruction*, 16>, 16>();

  // Second pass to identify Transient -> Stable paths and isolate
  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {
        // identifyLeak(&I, &leakyPaths);
        // identifyLeak2(&I, &leakyPaths);
        identifyLeak3(&I, &leakyPaths);
      }
    }
  }


  auto count = 0;
  for (SmallVector<Instruction*, 16> S : leakyPaths) {
    count++;
    D("\tLeak " << count);
    for (Instruction* I : S) {
      D("\t\t" << *I);
    }
  }

  S("DONE, Total leaks: " << count);

  return PreservedAnalyses::all();
}
