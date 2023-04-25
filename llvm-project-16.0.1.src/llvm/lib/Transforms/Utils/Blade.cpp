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
#define G(X) if(BLADE_DEBUG) errs() << "🟢 " << X << "\n"
#define B(X) if(BLADE_DEBUG) errs() << "🔵 " << X << "\n"

// STATISTIC(NumTransient, "Number of transient Nodes added");
// STATISTIC(NumStable, "Number of stable Nodes added");



void markInstStable(Instruction *Inst) {
  LLVMContext& C = Inst->getContext();
  MDNode* N = MDNode::get(C, MDString::get(C, "some metadata content"));
  Inst->setMetadata("STABLE", N);
}

void markInstTransient(Instruction *Inst) {
  LLVMContext& C = Inst->getContext();
  MDNode* N = MDNode::get(C, MDString::get(C, "some metadata content"));

  Inst->setMetadata("TRANSIENT", N);
}



PreservedAnalyses BladePass::run(Module &M, ModuleAnalysisManager &AM) {

  // Iterate over every Function in the Module
  for (Function &F : M) {
    D("Function: " << F.getName());
    for (BasicBlock &BB : F) {
      for (Instruction &I : BB) {

        if (I.getOpcode() == Instruction::Load) {
          G("\tInstruction: " << I);
          markInstTransient(&I);
        } else {
          D("\tInstruction: " << I);
        }

        for (User *U : I.users()) {
          if (Instruction *Inst = dyn_cast<Instruction>(U)) {
            if (Inst->getOpcode() == Instruction::Load) {
              B("\t\tUsed as Array Index: " << *Inst);
              markInstStable(Inst);
            }
          }
        }
      }
    }
  }
  

  return PreservedAnalyses::all();
}
