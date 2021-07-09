#!/bin/bash

mkdir -p /data/mysql/master/data /data/mysql/slave1/data /data/mysql/slave2/data
mkdir -p /data/mysql/master/log /data/mysql/slave1/log /data/mysql/slave2/log
mkdir -p /data/mysql/master/conf /data/mysql/slave1/conf /data/mysql/slave2/conf
mkdir -p /data/mysql/master/init
mkdir -p /data/mysql/proxysql/data /data/mysql/proxysql/conf

cp my_custom.cnf /data/mysql/master/conf
cp my_custom.cnf /data/mysql/slave1/conf
cp my_custom.cnf /data/mysql/slave2/conf
cp init.sql /data/mysql/master/init
cp proxysql.cnf /data/mysql/proxysql/conf

chown -R 1001:1001 /data/mysql/master/data /data/mysql/master/log
chown -R 1001:1001 /data/mysql/slave1/data /data/mysql/slave1/log
chown -R 1001:1001 /data/mysql/slave2/data /data/mysql/slave2/log

sh run_mysql.sh

sh show_mysql.sh
