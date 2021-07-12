#!/bin/bash

mkdir -p /data/mariadb/master/data /data/mariadb/slave1/data /data/mariadb/slave2/data
mkdir -p /data/mariadb/master/log /data/mariadb/slave1/log /data/mariadb/slave2/log
mkdir -p /data/mariadb/master/conf /data/mariadb/slave1/conf /data/mariadb/slave2/conf
mkdir -p /data/mariadb/master/init /data/mariadb/slave1/init /data/mariadb/slave2/init
mkdir -p /data/mariadb/proxysql/data /data/mariadb/proxysql/conf

cp my_custom.cnf /data/mariadb/master/conf
cp my_custom.cnf /data/mariadb/slave1/conf
cp my_custom.cnf /data/mariadb/slave2/conf

cp init.sql /data/mariadb/master/init
cp init.sql /data/mariadb/slave1/init
cp init.sql /data/mariadb/slave2/init

cp proxysql.cnf /data/mariadb/proxysql/conf

chown -R 1001:1001 /data/mariadb/master/data /data/mariadb/master/log
chown -R 1001:1001 /data/mariadb/slave1/data /data/mariadb/slave1/log
chown -R 1001:1001 /data/mariadb/slave2/data /data/mariadb/slave2/log

sh run_mariadb.sh

sh show_mariadb.sh
