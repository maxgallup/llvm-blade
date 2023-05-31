#!/bin/bash

MAINDIR="/home/devblade/work"

ninja -C /home/devblade/build opt || exit 1

cd $MAINDIR



if [ -z $1 ]; then

	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test/csrc
	cd $MAINDIR/test/ll/
	echo "Running all tests"
	for file in * ; do
		echo ">>> $file"
		export UBSAN_OPTIONS=print_stacktrace=true
		/home/devblade/build/bin/opt -S -p blade $file > $MAINDIR/test/out/out-${file%%.*}.ll
	done

elif [ $1 == "bench" ]; then
	echo "Running Benchmarks"
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test-benchmarks/csrc
	cd $MAINDIR/test-benchmarks/ll/
	for file in * ; do
		echo ">>> $file"
		file_core=${file%%.*}
		export UBSAN_OPTIONS=print_stacktrace=true
		# echo "compiling $file -> ../out/out-$file_core.ll"
		STATS=$(/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test-benchmarks/out/out-$file_core.ll 2>&1)
		
		# MyBlade binary
		# echo "compiling out-$file -> ../bin/$file_core"
		clang ../out/out-$file -o ../bin/$file_core

		# Baseline binary
		# echo "compiling $file -> ../bin/base-$file_core"
		clang $file -o ../bin/base-$file_core

		TIME=$( (time ../bin/$file_core ) 2>&1 > /dev/null | grep real | awk '{print $2}')
		TIME_BASE=$( (time ../bin/base-$file_core ) 2>&1 > /dev/null | grep real | awk '{print $2}')
		
		# echo "$file_core,$STATS,$TIME"
		echo "$file_core,$TIME,blade" >> $MAINDIR/test-benchmarks/results.csv
		echo "$file_core,$TIME_BASE,base" >> $MAINDIR/test-benchmarks/results.csv
	done
else
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test/csrc
	cd $MAINDIR/test/ll/
	echo "Running test: $1"
	
	for file in $1* ; do
		echo ">>> $file"
		export UBSAN_OPTIONS=print_stacktrace=true
		/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test/out/out-${file%%.*}.ll
	done

fi

