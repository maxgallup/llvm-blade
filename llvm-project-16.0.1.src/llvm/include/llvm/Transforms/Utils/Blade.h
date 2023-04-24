//===-- Blade.h -------------------------------------------------*- C++ -*-===//
//
// Private Research Project
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_TRANSFORMS_UTILS_BLADE_H
#define LLVM_TRANSFORMS_UTILS_BLADE_H

#include "llvm/IR/PassManager.h"

namespace llvm {

class BladePass : public PassInfoMixin<BladePass> {
public:
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM);
};

} // namespace llvm

#endif // LLVM_TRANSFORMS_UTILS_BLADE_H
