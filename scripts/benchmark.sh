#!/bin/bash

ninja -C /home/devblade/build/ -j 8

MAINDIR=/home/devblade/work

TIME_PREFIX=$(date +'%H-%M')

# EXECUTABLES=(
# 	./salsa20-test.exe
# 	./sha2-test.exe
# 	./chacha20-test.exe
# 	./poly1305-256-test.exe
# 	./curve64-ours.exe
# )

EXECUTABLES=(
	./bignum4096-test.exe
	./blake2-32-test.exe
	./chacha20poly1305-256-test.exe
	./chacha20poly1305-32-test.exe
	./ecdhp256-test.exe
	./ed25519-test.exe
	./k256-ecdsa-test.exe
)

function run_bw() {
	echo "----- Running $1 -----"
	echo "----- Running $1 -----" >> $MAINDIR/results/$TIME_PREFIX-BenchExe-$2.log
	for i in `seq 0 19`; do 
		$1 | grep bw | awk '{print $2}' >> $MAINDIR/results/$TIME_PREFIX-BenchExe-$2.log
	done
}

function compile() {
	echo ">>> Compiling $1"
	cd $MAINDIR/hacl-star-main/dist/gcc-compatible
	make clean
	make BLADE_MODE=$1 >> $MAINDIR/results/$TIME_PREFIX-Compile-$1.log 2>&1

	cd $MAINDIR/hacl-star-main/tests
	make clean
	make BLADE_MODE=$1 >> $MAINDIR/results/$TIME_PREFIX-Compile-$1.log 2>&1

	echo ">>> Running $1"
	for exec in "${EXECUTABLES[@]}"; do
		run_bw $exec $1
	done
	echo ">>> Finished $1"
}


compile base
compile blade
compile naive









# ---------------------------
# Available tests
# ---------------------------
# FrodoKEM-64-test.exe
# bignum4096-test.exe
# blake2-32-test.exe
# blake2b-256-test-streaming.exe
# blake2b-256-test.exe
# blake2b-32-test-streaming.exe
# blake2s-128-test-streaming.exe
# blake2s-128-test.exe
# blake2s-32-test-streaming.exe
# chacha20-vec-test.exe
# chacha20poly1305-128-test.exe
# chacha20poly1305-256-test.exe
# chacha20poly1305-32-test.exe
# curve51-ours.exe
# curve64-rfc.exe
# ecdhp256-test.exe
# ed25519-test.exe
# ffdhe-test.exe
# k256-ecdsa-test.exe
# naclbox-test.exe
# p256-test.exe
# poly1305-128-test-streaming.exe
# poly1305-128-test.exe
# poly1305-256-test-streaming.exe
# poly1305-32-test-streaming.exe
# poly1305-32-test.exe
# rsapss-test.exe
# sha2-mb-test.exe
# sha2-test-streaming.exe
# sha3-streaming-test.exe
# vec-128-test.exe