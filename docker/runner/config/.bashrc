# personalized PS1 prompt

PS1="\W \e[01;31m$\e[m "

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Alias definitions in bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

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
alias opt='/home/devblade/llvm-project-16.0.1.src/build/bin/opt'

# easily recompile from any dir
alias recompile='cd /home/devblade/llvm-project-16.0.1.src/build && ninja'


export NINJA_STATUS="%e[%f/%t] "
