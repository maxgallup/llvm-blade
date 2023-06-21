#!/bin/bash


# old commands
# $MAINDIR/build/bin/opt -p goodbye $MAINDIR/work/test/ll/add_0.ll -S 2>&1
# $MAINDIR/build/bin/clang -Xclang -load -Xclang $MAINDIR/build/lib/Bye.so $MAINDIR/work/test/csrc/add.c -o $MAINDIR/work/test/csrc/add -v 
# $MAINDIR/build/bin/clang -O3 -Xclang -load -Xclang $MAINDIR/build/lib/LLVMHello.so -S -emit-llvm $MAINDIR/work/test/csrc/add.c -o $MAINDIR/work/test/csrc/add.ll -v 2>&1

INPUT_C_FILE=$1

MAINDIR="/home/devblade"

ninja -C $MAINDIR/build

echo "Compiling $INPUT_C_FILE with Blade"

clang -fpass-plugin=$MAINDIR/build/lib/BladePass.so \
	-O3 \
	$MAINDIR/work/test/csrc/add.c -o $MAINDIR/work/test/csrc/asdf




	# -O3 -S -emit-llvm \




