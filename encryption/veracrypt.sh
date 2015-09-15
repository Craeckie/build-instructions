#!/bin/bash

read -p "Download veracrypt from https://veracrypt.codeplex.com/releases"

mkdir veracrypt
pushd veracrypt
tar xvf ../veracrypt-1.13-setup.tar.bz2
chmod +x veracrypt-1.13-setup-gui-x64
./veracrypt-1.13-setup-gui-x64
popd
rm -r veracrypt
