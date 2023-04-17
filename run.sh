#!/bin/bash

docker run -w /home/devblade/work --hostname devblade -it \
  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
  -v "$(pwd)"/:/home/devblade/work:z \
  maxgallup/devblade-built /usr/bin/bash

