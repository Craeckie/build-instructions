#!/bin/bash

sudo apt-get install intltool itstool libxml2-utils python-gobject-2 python

curl -L https://download.gnome.org/sources/meld/3.14/meld-3.14.0.tar.xz | tar xvJ
pushd meld-3.14.0/
sudo python setup.py install
popd
rm -r meld-3.14.0/
