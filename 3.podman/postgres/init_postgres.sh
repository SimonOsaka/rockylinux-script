#!/bin/bash
sh pull_postgres.sh

mkdir -p /data/postgres/data
mkdir -p /data/postgres/conf

podman run -itd -e POSTGRES_PASSWORD=123456 --name postgres_podman docker.io/postgres:alpine

podman cp postgres_podman:/usr/local/share/postgresql/postgresql.conf.sample /data/postgres/conf/postgres.conf

sh rm_postgres.sh

sh run_postgres.sh
