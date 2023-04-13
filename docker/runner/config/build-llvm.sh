export CC=clang
export CXX=clang++

cd /home/devblade/build



cmake ../llvm-project-16.0.1.src/llvm -G Ninja\
	-DLLVM_TARGETS_TO_BUILD="X86" \
	-DCMAKE_BUILD_TYPE=Debug

ninja all -v