#!/bin/bash
set -e

sed -i~ -e "s|DEST_HOME=.*|DEST_HOME=$PREFIX|" makefile.common
sed -i~ -e "/^CC=/c CC=$CC" -e "/^CXX=/c CXX=$CXX" makefile.machine

make 7za
make install
