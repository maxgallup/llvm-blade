FROM archlinux:base-devel

# Install some dependencies/debuggers/editors
RUN pacman -Sy --noconfirm cmake vim gdb nano tmux wget libedit git lld ninja libffi ncurses libxml2 clang

# Add a custom user and allow sudo
RUN useradd devblade -u 1000 -m -s /bin/bash
RUN echo "devblade ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER devblade

RUN mkdir -p /home/devblade/work
WORKDIR /home/devblade
RUN wget "https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.1/llvm-project-16.0.1.src.tar.xz" -O llvm.tar.xz
RUN tar xf llvm.tar.xz
RUN rm llvm.tar.xz


# Setup the LLVM source for debuggers to use.
USER root
RUN mkdir -p /llvm/src
RUN cp -r /home/devblade/llvm-project-16.0.1.src /llvm/src/llvm-project


# --- Build LLVM ---
USER devblade
WORKDIR /home/devblade/llvm-project-16.0.1.src
RUN mkdir build
WORKDIR /home/devblade/llvm-project-16.0.1.src/build
RUN export CC=clang
RUN export CXX=clang++
RUN cmake -DCMAKE_BUILD_TYPE=Debug \
	-DLLVM_USE_SANITIZER="Address" \
	# -DLLVM_USE_SANITIZER="Address;Undefined" \ // Currently not compiling
	-DLLVM_ENABLE_ASSERTIONS=On \
	-DLLVM_ENABLE_PROJECTS=clang \
	-DLLVM_TARGETS_TO_BUILD="X86" \
	-DCLANG_ENABLE_STATIC_ANALYZER=OFF \
	-DCLANG_ENABLE_ARCMT=OFF \
	-G Ninja ../llvm

RUN export NINJA_STATUS="%e[%f/%t] "
RUN ninja

# -- Install LLVM --
WORKDIR /home/devblade/llvm-project-16.0.1.src/build
USER root
RUN ninja install

# --- Custom shell config ---
USER devblade
WORKDIR /home/devblade
RUN rm /home/devblade/.bashrc
COPY ./config/.bashrc /home/devblade/.bashrc

