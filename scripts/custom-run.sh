#!/bin/bash

ninja -C /home/devblade/build opt || exit 1

cd /home/devblade/work 

/home/devblade/work/scripts/c-to-llvm.sh

cd /home/devblade/work/test/ll/


if [ -z $1 ]; then
	echo "Running all tests"
	for file in * ; do
		echo ">>> $file"

		export UBSAN_OPTIONS=print_stacktrace=true

		/home/devblade/build/bin/opt -S -p blade $file > /home/devblade/work/test/out/out-${file%%.*}.ll
	done
else
	echo "Running test: $1"
	
	for file in $1* ; do
		echo ">>> $file"

		export UBSAN_OPTIONS=print_stacktrace=true

		/home/devblade/build/bin/opt -S -p blade $file > /home/devblade/work/test/out/out-${file%%.*}.ll
	done

fi

# echo ${file%%.*}.ll


