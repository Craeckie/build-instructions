#!/bin/bash

# Install keepass2

# Deb-package
sudo add-apt-repository ppa:dlech/keepass2-plugins
sudo apt-get update
sudo apt-get install keepass2-plugin-keeagent

# From Source
#sudo apt-add-repository ppa:dlech/keepass2-plugin-dev && sudo apt-get update
#sudo apt-get install keepass2-plugin-dev

#git clone git://github.com/dlech/KeeAgent
#pushd KeeAgent
#git submodule init
#git submodule update
#cp Local.proj.sample.linux Local.proj
#mozroots --import --sync # this is so SSL works with nuget
#...
