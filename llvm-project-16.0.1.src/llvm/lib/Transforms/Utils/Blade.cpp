//===-- Blade.cpp - -------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Utils/Blade.h"

using namespace llvm;

PreservedAnalyses BladePass::run(Module &M, ModuleAnalysisManager &AM) {

  for (Function &F : M) {
    errs() << "BLADE: " << F.getName() << "\n";
  }
  

  return PreservedAnalyses::all();
}
