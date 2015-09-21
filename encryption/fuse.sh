#!/bin/bash

curl -L http://sourceforge.net/projects/fuse/files/fuse-2.X/2.9.4/fuse-2.9.4.tar.gz/download | tar xvz
pushd fuse-2.9.4
./configure
make
sudo make install
popd
rm -r fuse-2.9.4
