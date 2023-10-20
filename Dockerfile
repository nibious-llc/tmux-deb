FROM ubuntu:18.04

RUN apt update && apt install -y build-essential binutils lintian debhelper dh-make devscripts git libevent-dev ncurses-dev build-essential bison pkg-config

WORKDIR /package

RUN git clone https://git.nibious.com/Nibious-LLC/dpkg-tmux tmux

WORKDIR /package/tmux


