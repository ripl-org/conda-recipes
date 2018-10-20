#!/bin/bash

set -e

wget https://github.com/datamade/usaddress/blob/master/LICENSE

python setup.py install --single-version-externally-managed --record=record.txt

