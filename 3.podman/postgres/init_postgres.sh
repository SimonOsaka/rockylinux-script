#!/bin/bash
sh pull_postgres.sh

mkdir -p /data/postgres/data
mkdir -p /data/postgres/conf

docker run -itd -e POSTGRES_PASSWORD=123456 --name postgres_server postgres:alpine

docker cp postgres_server:/usr/local/share/postgresql/postgresql.conf.sample /data/postgres/conf/postgres.conf

sh rm_postgres.sh

sh run_postgres.sh
