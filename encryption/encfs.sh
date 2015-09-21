#!/bin/bash

# bash fuse.sh

apt-get install libssl-dev libboost-serialization-dev librlog-dev

curl -L https://github.com/vgough/encfs/tarball/master | tar xvz

pushd vgough-encfs-*
mkdir build
pushd build
cmake ..
make
make test # optional
sudo make install
popd # build
popd # vgough-encfs-..
rm -r vgough-encfs-*

