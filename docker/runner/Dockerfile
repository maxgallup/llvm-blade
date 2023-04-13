FROM archlinux:base-devel

# Install some dependencies/debuggers/editors
RUN pacman -Sy --noconfirm cmake vim gdb nano tmux wget libedit git lld ninja libffi ncurses libxml2 clang

# Add a custom user and allow sudo
RUN useradd devblade -u 1000 -m -s /bin/bash
RUN echo "devblade ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# # # Setup a tmp dir for our llvm/lldb installation.
# RUN mkdir /llvm-tmp
# WORKDIR /llvm-tmp

# Install LLVM and a custom LLDB that doesn't depend on system LLVM.
# RUN wget "https://download.vusec.net/vms/devblade/lldb-14.0.6-1-x86_64.pkg.tar.zst"
# RUN wget "https://download.vusec.net/vms/devblade/llvm-10.0.1-2-x86_64.pkg.tar.zst"
# RUN wget "https://download.vusec.net/vms/devblade/libclang-10.0.1-2-x86_64.pkg.tar.zst"
# RUN pacman -U --noconfirm lldb-14.0.6-1-x86_64.pkg.tar.zst
# RUN pacman -U --noconfirm llvm-10.0.1-2-x86_64.pkg.tar.zst
# RUN pacman -U --noconfirm libclang-10.0.1-2-x86_64.pkg.tar.zst

# Setup the LLVM source for debuggers to use.
WORKDIR /home/devblade
RUN mkdir -p /llvm/src
RUN wget "https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.1/llvm-project-16.0.1.src.tar.xz" -O llvm.tar.xz
RUN tar xf llvm.tar.xz
RUN cp -r llvm-project-16.0.1.src /llvm/src/llvm-project


WORKDIR /home/devblade

COPY ./config/.bash_aliases /home/devblade
COPY ./config/.bashrc /home/devblade

USER devblade

# # Disable annoying zsh startup spam.
# RUN echo "" > ~/.zshrc

# # Setup vim completion
# RUN mkdir -p ~/.vim/pack/plugins/start
# RUN git clone --depth=1 https://github.com/ervandew/supertab.git ~/.vim/pack/plugins/start/supertab
# RUN git clone --depth=1 https://github.com/xavierd/clang_complete.git ~/.vim/pack/completion/start/clang_complete
# RUN git clone --depth=1 https://github.com/bfrg/vim-cpp-modern ~/.vim/pack/git-plugins/start/vim-cpp-modern
# RUN echo -e "let g:clang_library_path='/opt/libclang/lib/libclang.so'\nsyntax on" > ~/.vimrc

# # Install Python dependencies
# RUN pip install ply termcolor llvmlite==0.34 setuptools
