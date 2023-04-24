#!/bin/bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias python="python3"
alias l="ls -lah"
alias ..="cd .."

# git aliases
alias gs="git status"
alias gc="git commit -m "
alias ga="git add "
alias gp="git push"
alias gpl="git pull"
alias gl="git log --pretty=oneline"

# tmux
alias ta="tmux attach"
alias tl="tmux ls"
alias tk="tmux kill-server"

# get public ip address
alias myip='curl ifconfig.me'

# Custom build LLVM tools:
# alias myopt='/home/devblade/work/llvm-project-16.0.1.src/build/bin/opt'

alias myopt='export UBSAN_OPTIONS=print_stacktrace=true; /home/devblade/work/llvm-project-16.0.1.src/build/bin/opt -load "/home/devblade/work/src/obj/LLVMBlade.so" -S "$@"'

# easily recompile from any dir
alias recompile='cd /home/devblade/work/llvm-project-16.0.1.src/build && ninja --verbose && cd -'


