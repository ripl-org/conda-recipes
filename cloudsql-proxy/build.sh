#!/bin/bash
set -e
mv cloud_sql_proxy.linux.amd64 cloud_sql_proxy
install -d $PREFIX/bin
install cloud_sql_proxy $PREFIX/bin/
