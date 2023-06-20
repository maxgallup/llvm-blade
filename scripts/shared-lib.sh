#!/bin/bash



MAINDIR="/home/devblade"

# $MAINDIR/build/bin/opt -p goodbye $MAINDIR/work/test/ll/add_0.ll -S 2>&1

# $MAINDIR/build/bin/clang -Xclang -load -Xclang $MAINDIR/build/lib/Bye.so $MAINDIR/work/test/csrc/add.c -o $MAINDIR/work/test/csrc/add -v 

$MAINDIR/build/bin/clang -fuse-ld=gold -flto=thin $MAINDIR/work/test/csrc/add.c -c -o $MAINDIR/work/test/csrc/add.o -v

