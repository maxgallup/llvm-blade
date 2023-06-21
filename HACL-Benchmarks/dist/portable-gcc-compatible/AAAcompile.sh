#!/bin/bash




MAINDIR="/home/devblade"

ninja -C $MAINDIR/build

if [ -z $1 ]; then
	echo "Usage: ./compile.sh [chacha/curve/...]"
	exit 69
fi

function compile() {

	echo ">>> Blade"
	clang -fpass-plugin=$MAINDIR/build/lib/BladePass.so \
		-O3 \
		-I karamel/include -I karamel/krmllib/dist/minimal \
		$@ -o bin/exec-blade-${1%%.*}
	
	echo ">>> Naive"
	clang -fpass-plugin=$MAINDIR/build/lib/BladeNaivePass.so \
		-O3 \
		-I karamel/include -I karamel/krmllib/dist/minimal \
		$@ -o bin/exec-naive-${1%%.*}

	echo ">>> Baseline"
	clang -O3 \
		-I karamel/include -I karamel/krmllib/dist/minimal \
		$@ -o bin/exec-base-${1%%.*}
}


if [ $1 == "all" ]; then
	echo "Compiling all"
	compile Hacl_Chacha20.c
	compile Hacl_Salsa20.c
	compile Hacl_Poly1305_256.c
fi

if [ $1 == "curve" ]; then
	echo "Compiling Curve22519"
	compile Hacl_Curve25519_64.c EverCrypt_AutoConfig2.c Vale.c
fi

if [ $1 == "chacha" ]; then
	echo "Compiling ChaCha20"
	compile Hacl_Chacha20.c
fi


if [ $1 == "poly" ]; then
	echo "Compiling Poly1305"
	compile Hacl_Poly1305_256.c
fi

if [ $1 == "salsa" ]; then
	echo "Compiling Salsa20"
	compile Hacl_Salsa20.c 
fi

# if [ $1 == "curve" ]; then
# 	echo "Compiling Curve25519"

# 	clang -fpass-plugin=$MAINDIR/build/lib/BladePass.so \
# 		-O3 \
# 		-I karamel/include -I karamel/krmllib/dist/minimal \
# 		Hacl_Curve25519_64.c -o bin/exec-blade-curve25519


# 	clang -O3 \
# 		-I karamel/include -I karamel/krmllib/dist/minimal \
# 		Hacl_Curve25519_64.c -o bin/exec-base-curve25519
# fi



