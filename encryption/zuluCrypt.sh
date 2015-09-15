#!/bin/bash

# bash cryptsetup.sh

sudo apt-get install tar xz-utils libpwquality-dev libblkid-dev libqt4-dev libqt4-network libqtcore4 libqtgui4 gcc g++ libcryptsetup-dev cmake libgcrypt11-dev libtcplay-dev libsecret-1-dev pkg-config libdevmapper-dev uuid-dev libudev-dev chrpath bzip2 debhelper

mkdir zuluBuild
pushd zuluBuild

curl -L https://github.com/mhogomchungu/zuluCrypt/tarball/master | tar xvz

pushd mhogomchungu-zuluCrypt-*

mv debian_package_info/ debian/

tar cf - . | xz -zf - > ../zulucrypt_4.7.7.orig.tar.xz
dpkg-buildpackage -uc -us

popd

sudo dpkg --install *.deb

rm -r zuluBuild

