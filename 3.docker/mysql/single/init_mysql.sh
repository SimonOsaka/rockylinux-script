#!/bin/bash

mkdir -p /data/mysql/data
mkdir -p /data/mysql/log
mkdir -p /data/mysql/conf

cp my_custom.cnf /data/mysql/conf

chown -R 1001:1001 /data/mysql/data /data/mysql/log

sh run_mysql.sh

sh show_mysql.sh
