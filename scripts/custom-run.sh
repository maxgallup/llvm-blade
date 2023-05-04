#!/bin/bash

/home/devblade/work/scripts/c-to-llvm.sh

cd /home/devblade/work/test/ll/

for file in * ; do
	echo $file
	echo ${file%%.*}.ll

	export UBSAN_OPTIONS=print_stacktrace=true

	/home/devblade/build/bin/opt -S -p blade $file > /home/devblade/work/test/out/out-${file%%.*}.ll
done






