#!/bin/bash




MAINDIR="/home/devblade"

ninja -C $MAINDIR/build

if [ -z $1 ]; then
	echo "Usage: ./compile.sh [chacha/curve/...]"
	exit 69
fi


if [ $1 == "chacha" ]; then
	echo "Compiling ChaCha20"

	clang -fpass-plugin=$MAINDIR/build/lib/BladePass.so \
		-O3 \
		-I karamel/include -I karamel/krmllib/dist/minimal \
		Hacl_Chacha20.c -o bin/exec-blade-chacha20


	clang -O3 \
		-I karamel/include -I karamel/krmllib/dist/minimal \
		Hacl_Chacha20.c -o bin/exec-base-chacha20
fi


if [ $1 == "poly" ]; then
	echo "Compiling Poly1305"

	clang -O3 \
		-I ../dist/portable-gcc-compatible/karamel/include \
		-I ../dist/portable-gcc-compatible/karamel/krmllib/dist/minimal \
		-I ../dist/portable-gcc-compatible \
		poly1305-256-test.c -o bin/exec-base-poly1305
		# -I ../dist/portable-gcc-compatible/internal \
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



