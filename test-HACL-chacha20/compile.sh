#!/bin/bash




MAINDIR="/home/devblade"

ninja -C $MAINDIR/build

# Blade Compilation
clang -fpass-plugin=$MAINDIR/build/lib/BladePass.so \
	-O3 \
	-I karamel/include -I karamel/krmllib/dist/minimal \
	Hacl_Chacha20.c -o exec-blade-chahca20


# Normal Clang compilation
clang -O3 \
	-I karamel/include -I karamel/krmllib/dist/minimal \
	Hacl_Chacha20.c -o exec-base-chacha20

