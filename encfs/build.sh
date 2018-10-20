#!/bin/bash
set -e

export LDFLAGS="$LDFLAGS -L/lib64"

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make install
