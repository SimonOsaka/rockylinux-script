#!/bin/bash

mkdir -p /data/postgres/replication/master/data
mkdir -p /data/postgres/replication/master/conf
mkdir -p /data/postgres/replication/slave1/data
mkdir -p /data/postgres/replication/slave2/data

chown 1001:1001 /data/postgres/replication/master/data /data/postgres/replication/master/conf /data/postgres/replication/slave1/data /data/postgres/replication/slave2/data

cp postgres.conf /data/postgres/replication/master/conf/postgresql.conf

sh run_postgres.sh

sh show_postgres.sh
