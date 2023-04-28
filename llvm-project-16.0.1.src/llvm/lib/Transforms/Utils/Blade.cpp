//===-- Blade.cpp - -------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Utils/Blade.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/Debug.h"

using namespace llvm;

#define DEBUG_TYPE "blade"
#define BLADE_DEBUG 1
#define E(X) errs() << "🔴 " << X << "\n"
#define D(X) if(BLADE_DEBUG) errs() << "🟣 " << X << "\n"
#define S(X) if(BLADE_DEBUG) errs() << "🟢 " << X << "\n"
// #define B(X) if(BLADE_DEBUG) errs() << "🔵 " << X << "\n"

// STATISTIC(NumTransient, "Number of transient Nodes added");
// STATISTIC(NumStable, "Number of stable Nodes added");



void markInstructionStable(Instruction *Inst) {
  if (!Inst->hasMetadata("STABLE")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "some metadata content"));
    Inst->setMetadata("STABLE", N);
  }
}

void markInstructionTransient(Instruction *Inst) {
  if (!Inst->hasMetadata("TRANSIENT")) {
    LLVMContext& C = Inst->getContext();
    MDNode* N = MDNode::get(C, MDString::get(C, "some metadata content"));
    Inst->setMetadata("TRANSIENT", N);
  }
}

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

void propgateMarks(Instruction *I) {
  if (I->hasMetadata("TRANSIENT")) {
    // propgate transient to all uses

    for (User *U : I->users()) {
      if (Instruction *II = dyn_cast<Instruction>(U)) {
        markInstructionTransient(II);
      }
    }

  } else if (I->hasMetadata("STABLE")) {
    // not propgating stable marks
  }
}



PreservedAnalyses BladePass::run(Module &M, ModuleAnalysisManager &AM) {

  for (Function &F : M) {
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {

        markInstruction(&I);
        propgateMarks(&I);

      }
    }
  }
  

  return PreservedAnalyses::all();
}
