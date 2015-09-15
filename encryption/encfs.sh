#!/bin/bash

apt-get install libfuse-dev libssl-dev libboost-serialization-dev librlog-dev

curl -L https://github.com/vgough/encfs/tarball/master | tar xvz

pushd vgough-encfs-*
make
