#!/bin/bash

mkdir -p /data/mariadb/data
mkdir -p /data/mariadb/log
mkdir -p /data/mariadb/conf
mkdir -p /data/mariadb/init

cp my_custom.cnf /data/mariadb/conf

cp init.sql /data/mariadb/init

chown -R 1001:1001 /data/mariadb/data /data/mariadb/log

sh run_mariadb.sh

sh show_mariadb.sh
