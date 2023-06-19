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
	
	file=$1

	echo ">>> $file"
	echo ">>> $file" >> $MAINDIR/test-benchmarks/results.csv
	file_core=${file%%.*}
	export UBSAN_OPTIONS=print_stacktrace=true

	if [ $2 == "base" ]; then
		STATS="0,0,0"
		FILENAME="base-$file_core"
		clang $file -o ../bin/base-$file_core
	fi

	if [ $2 == "blade" ]; then
		FILENAME="blade-$file_core"
		STATS=$(/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test-benchmarks/out/$FILENAME.ll 2>&1)
		clang ../out/$FILENAME.ll -o ../bin/$FILENAME
	fi

	if [ $2 == "naive" ]; then
		FILENAME="naive-$file_core"
		STATS=$(/home/devblade/build/bin/opt -S -p blade $file -o $MAINDIR/test-benchmarks/out/$FILENAME.ll 2>&1)
		clang ../out/$FILENAME.ll -o ../bin/$FILENAME
	fi
	
	for i in $(seq 1 10); do
		TIME=$( (time ../bin/$FILENAME ) 2>&1 >> ../bin/$file_core.log | grep real | awk '{print $2}')
		echo "$file_core,$TIME,$2,$STATS" >> $MAINDIR/test-benchmarks/results.csv
	done
}

function benchmark_binaries() {
	cd $MAINDIR/test-benchmarks/ll/

	for file in * ; do
		echo $file
		run_benchmark $file $1
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
	echo "Benchmarking" $2
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test-benchmarks/csrc

	if [ $2 == "base" ]; then
		benchmark_binaries "base"
	fi

	if [ $2 == "blade" ]; then
		benchmark_binaries "blade"
	fi

	if [ $2 == "naive" ]; then
		benchmark_binaries "naive"
	fi

else
	$MAINDIR/scripts/c-to-llvm.sh $MAINDIR/test/csrc
	cd $MAINDIR/test/ll/
	echo "Running test: $1"
	
	for file in $1* ; do
		run_tests $file
	done

fi

