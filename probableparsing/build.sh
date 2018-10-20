#!/bin/bash

set -e

wget https://github.com/datamade/probableparsing/blob/master/LICENSE

python setup.py install --single-version-externally-managed --record=record.txt

