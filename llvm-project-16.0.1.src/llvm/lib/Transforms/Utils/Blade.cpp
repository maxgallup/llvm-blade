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
      E("failed to print a user of: " << I);
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
      }
      identifyLeakRec(Istart, II, leakyPaths, aLeakyPath);
    } else {
      E("failed to print a user of: " << Icurrent);
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
        }
        
        identifyLeakRec(I, II, leakyPaths, &aLeakyPath);
      } else {
        E("failed to print a user of: " << I);
      }
    }
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
        identifyLeak(&I, &leakyPaths);
      }
    }
  }


  auto count = 1;
  for (SmallVector<Instruction*, 16> S : leakyPaths) {
    S("\tLeak " << count);
    count++;
    for (Instruction* I : S) {
      D("\t\t" << *I);
    }
  }

  S("DONE");

  return PreservedAnalyses::all();
}
