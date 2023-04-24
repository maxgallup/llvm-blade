#!/bin/bash


docker run -w /home/devblade/work --hostname devblade -it --name devblade \
  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
  -v "$(pwd)"/:/home/devblade/work:z \
  maxgallup/devblade /usr/bin/bash



