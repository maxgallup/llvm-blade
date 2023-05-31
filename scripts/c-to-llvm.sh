#!/bin/bash

cd /home/devblade/work/test/csrc

for file in *; do
	if [ -f "$file" ]; then
		echo "converting $file -> ${file%%.*}.ll"
		# clang -S -flto -emit-llvm $file -o ../${file%%.*}.ll
		clang -S -O0 -flto -emit-llvm $file -o ../ll/${file%%.*}_0.ll
		clang -S -O1 -flto -emit-llvm $file -o ../ll/${file%%.*}_1.ll
		clang -S -O2 -flto -emit-llvm $file -o ../ll/${file%%.*}_2.ll
		clang -S -O3 -flto -emit-llvm $file -o ../ll/${file%%.*}_3.ll
	fi
done

