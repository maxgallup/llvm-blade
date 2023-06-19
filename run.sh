#!/bin/bash


# maxgallup/devblade-built has the first build of llvm already compiled (hence 85 gigs)
# maxgallup/devblade is missing /home/devblade/build directory (hence 4 gigs)

docker run -w /home/devblade/work --hostname devblade -it --name devblade \
  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
  -v "$(pwd)"/:/home/devblade/work:z \
  maxgallup/devblade-built /usr/bin/bash



