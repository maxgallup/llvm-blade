#!/bin/bash


if [ -z $1 ]; then
	echo "Must specify path to csrc directory"
	exit 1
fi
cd $1

for file in *; do
	if [ -f "$file" ]; then
		echo "converting $file -> ${file%%.*}.ll"
		clang -S -O0 -flto -emit-llvm $file -o ../ll/${file%%.*}_0.ll
		clang -S -O1 -flto -emit-llvm $file -o ../ll/${file%%.*}_1.ll
		clang -S -O2 -flto -emit-llvm $file -o ../ll/${file%%.*}_2.ll
		clang -S -O3 -flto -emit-llvm $file -o ../ll/${file%%.*}_3.ll
	fi
done

