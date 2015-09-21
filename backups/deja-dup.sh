#!/bin/bash

apt-get install valac intltool itstool libgtk-3-dev libnotify-dev libpeas-dev

curl https://launchpad.net/ubuntu/+archive/primary/+files/deja-dup_34.0.orig.tar.xz | tar xvJ
pushd deja-dup-32.0
make
sudo make install
popd
rm -r deja-dup-32.0
