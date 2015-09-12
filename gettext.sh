#!/bin/bash

curl http://ftp.gnu.org/pub/gnu/gettext/gettext-0.19.6.tar.gz | tar xvz
pushd ../gettext-0.19.6

./autogen.sh
./configure --prefix=/usr \
--disable-static \
--docdir=/usr/share/doc/gettext-0.19.5.1
make
sudo make install

popd
rm -r gnupg-2.0.29
