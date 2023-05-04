#!/bin/bash

cd /home/devblade/work/test/csrc

for file in *; do
	if [ -f "$file" ]; then
		echo "converting $file -> ${file%%.*}.ll"
		# clang -S -flto -emit-llvm $file -o ../${file%%.*}.ll
		clang -S -O3 -flto -emit-llvm $file -o ../ll/${file%%.*}.ll
	fi
done

