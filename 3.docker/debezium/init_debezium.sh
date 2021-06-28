#!/bin/bash
mkdir -p /data/debezium/data
mkdir -p /data/debezium/conf
mkdir -p /data/debezium/postgres/data
mkdir -p /data/debezium/postgres/conf
mkdir -p /data/debezium/postgres/init

cp application.properties /data/debezium/conf
cp postgres.conf /data/debezium/postgres/conf
cp example.sql /data/debezium/postgres/init

sh run_debezium.sh

sh show_debezium.sh

echo 'Wait 60s to run "sh example_topic.sh"'
