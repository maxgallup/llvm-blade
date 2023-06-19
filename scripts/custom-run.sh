#!/bin/bash

# Usage: 
# `gimme` converts all files in /test/csrc
# `gimme [filename]` converts only [filename] in /test/csrc
# `gimme bench` benchmarks everything in /test-benchmarks


MAINDIR="/home/devblade/work"

ninja -C /home/devblade/build opt || exit 1

cd $MAINDIR


function run_benchmark() {
	echo "Running Benchmarks for $1"
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test-benchmarks/csrc
	cd $MAINDIR/test-benchmarks/ll/
	
	file=$1

	echo ">>> $file"
	file_core=${file%%.*}
	export UBSAN_OPTIONS=print_stacktrace=true
	# echo "compiling $file -> ../out/out-$file_core.ll"
	# STATS=$(/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test-benchmarks/out/out-$file_core.ll 2>&1)
	/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test-benchmarks/out/out-$file_core.ll
	
	# MyBlade binary
	# echo "compiling out-$file -> ../bin/$file_core"
	clang ../out/out-$file -o ../bin/$file_core

	# Baseline binary
	# echo "compiling $file -> ../bin/base-$file_core"
	clang $file -o ../bin/base-$file_core

	TIME=$( (time ../bin/$file_core ) 2>&1 >> ../bin/$file_core.log | grep real | awk '{print $2}')
	TIME_BASE=$( (time ../bin/base-$file_core ) 2>&1 >> ../bin/$file_core.log | grep real | awk '{print $2}')
	
	# echo "$file_core,$STATS,$TIME"
	echo "$file_core,$TIME,blade" >> $MAINDIR/test-benchmarks/results.csv
	echo "$file_core,$TIME_BASE,base" >> $MAINDIR/test-benchmarks/results.csv
}

function benchmark_binaries() {
	echo "Benchmarking all binaries"
	cd $MAINDIR/test-benchmarks/bin
	
	for file in * ; do
		execute_bin $file
	done

	exit 0
}

function run_tests() {
	file=$1
	echo ">>> $file"
	export UBSAN_OPTIONS=print_stacktrace=true
	/home/devblade/build/bin/opt -S -p blade $file > $MAINDIR/test/out/out-${file%%.*}.ll

}

function execute_bin() {
	file_core=$1
	cd $MAINDIR/test-benchmarks/bin/

	echo "Running $file_core"

	TIME=$( (time ../bin/$file_core ) 2>&1 >> ../bin-log/$file_core.log | grep real | awk '{print $2}')

	echo "$file_core,$TIME" >> $MAINDIR/test-benchmarks/results.csv
	
}

if [ $1 == "runs" ]; then
	cd $MAINDIR/test-benchmarks/bin/
	for file in * ; do 
		execute_bin $file
	done
	exit 0
fi


if [ -z $1 ]; then
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test/csrc
	cd $MAINDIR/test/ll/
	echo "Running all tests"
	for file in * ; do
		run_tests $file
	done

elif [ $1 == "bench" ]; then
	if [ -z $2 ]; then
		# for file in * ; do
		# 	run_benchmark $file
		# done
		benchmark_binaries
	else
		run_benchmark $2.ll
	fi
else
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test/csrc
	cd $MAINDIR/test/ll/
	echo "Running test: $1"
	
	for file in $1* ; do
		run_tests $file
	done

fi

