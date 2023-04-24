#!/bin/bash

HOMEDIR="/home/devblade"
WORKDIR="$HOMEDIR/work"

# --- Build LLVM ---
cd $HOMEDIR
pwd
mkdir "$HOMEDIR/build"
cd "$HOMEDIR/build"
pwd

export CC=clang
export CXX=clang++
export NINJA_STATUS="%e[%f/%t] "

cmake -DCMAKE_BUILD_TYPE=Debug \
	-DLLVM_USE_SANITIZER="Address" \
	-DLLVM_ENABLE_ASSERTIONS=On \
	-DLLVM_ENABLE_PROJECTS=clang \
	-DLLVM_TARGETS_TO_BUILD="X86" \
	-DCLANG_ENABLE_STATIC_ANALYZER=OFF \
	-DCLANG_ENABLE_ARCMT=OFF \
	-G Ninja "$WORKDIR/llvm-project-16.0.1.src/llvm"

# ninja

# sudo ninja install
