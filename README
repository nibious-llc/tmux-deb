Welcome to Nibious `tmux` Package for Ubuntu
==========================================

## Background

`tmux` is a terminal multiplexer: it enables a number of terminals to be created,
accessed, and controlled from a single screen. `tmux` may be detached from a
screen and continue running in the background, then later reattached.

Normally you can install `tmux` via a package manager and have it work nicely.
The issue is that the debian packages are compiled with `utempter` support.

`utempter` is a privileged helper used by libutempter library to manipulate utmp
and wtmp files. The libutempter library provides interface for terminal
emulators such as screen and xterm to record user sessions to utmp and wtmp
files.

The issue is when you log into a machine, type `users`, and see too many users
"signed in". This happens for each panel that is opened by tmux. This can cause
problems if your organization limits the amount of times your user can be signed
in at once.

## Purpose

This repository will build a `tmux` `.deb` package so that you can install
`tmux` without the `utempter` library.

## Usage

First, modify the `Dockerfile` to be the OS version that you want.

Then, build the container:

```bash
docker build . -t dpkg:tmux
```

And run the container:

```bash
docker run --rm -it dpkg:tmux
```

If building older than Ubuntu 22.04, use the `ubuntu18.04` branch:

```bash
git checkout ubuntu18.04
```

And build the `.deb` package:

```bash
dpkg-buildpackage -b
```

Then copy the `.deb` package out of the container:

```bash
# on host
docker cp <containerID>/package/tmux_3.3a-3_amd64.deb .
```

And you have your package! 

**Note**: You will have to build a deb per release of the OS.