#!/bin/bash
mkdir -p /data/xxljob/mysql/data
mkdir -p /data/xxljob/mysql/logs
mkdir -p /data/xxljob/mysql/init

cp xxljob.sql /data/xxljob/mysql/init
cp my.cnf /data/xxljob/mysql

sh run_xxljob.sh

sh show_xxljob.sh
