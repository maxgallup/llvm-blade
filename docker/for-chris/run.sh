#!/bin/bash

sudo docker build -t demo/spv1 .

sudo docker run --rm -w /home/devblade/work --hostname devblade -it \
  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
  -v "$(pwd)"/:/home/devblade/work:z \
  demo/spv1 /usr/bin/bash


