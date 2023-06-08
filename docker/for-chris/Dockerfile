FROM ubuntu:20.04

# Install some dependencies/debuggers/editors
RUN apt-get update && apt-get install -y cmake clang

# Add a custom user and allow sudo
RUN useradd devblade -u 1000 -m -s /bin/bash
RUN echo "devblade ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER devblade





