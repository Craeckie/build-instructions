#!/bin/bash


sudo apt-get install uuid-dev libdevmapper-dev libpopt-dev

curl https://www.kernel.org/pub/linux/utils/cryptsetup/v1.6/cryptsetup-1.6.8.tar.xz | tar xvJ
pushd cryptsetup-1.6.8

./configure
make
make install

popd
rm -r cryptsetup-1.6.8
