#!/bin/bash

export CC="$(xcrun -f clang)"
export CXX="$(xcrun -f clang++)"
export MACOSX_DEPLOYMENT_TARGET=12.0

# build libwally
git clone https://github.com/ElementsProject/libwally-core --recurse-submodules -b release_0.9.2
cd libwally-core
./tools/autogen.sh
./configure --disable-shared --disable-tests
sudo make -j3 install
cd ..
