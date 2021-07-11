#!/bin/bash

mkdir -p /data/mariadb/cluster1/data /data/mariadb/cluster2/data /data/mariadb/cluster3/data
mkdir -p /data/mariadb/cluster1/log /data/mariadb/cluster2/log /data/mariadb/cluster3/log
mkdir -p /data/mariadb/cluster1/conf /data/mariadb/cluster2/conf /data/mariadb/cluster3/conf
mkdir -p /data/mariadb/cluster1/init /data/mariadb/cluster2/init /data/mariadb/cluster3/init
mkdir -p /data/mariadb/proxysql/data /data/mariadb/proxysql/conf

cp my_custom.cnf /data/mariadb/cluster1/conf
cp my_custom.cnf /data/mariadb/cluster2/conf
cp my_custom.cnf /data/mariadb/cluster3/conf

cp init.sql /data/mariadb/cluster1/init
cp init.sql /data/mariadb/cluster2/init
cp init.sql /data/mariadb/cluster3/init

cp proxysql.cnf /data/mariadb/proxysql/conf

chown -R 1001:1001 /data/mariadb/cluster1/data /data/mariadb/cluster1/log
chown -R 1001:1001 /data/mariadb/cluster2/data /data/mariadb/cluster2/log
chown -R 1001:1001 /data/mariadb/cluster3/data /data/mariadb/cluster3/log

sh run_mariadb.sh

sh show_mariadb.sh
