#!/bin/bash
sh pull_postgres.sh

mkdir -p /data/postgres/data
mkdir -p /data/postgres/conf

podman run -i --rm --name postgres_podman cat /usr/share/postgresql/postgresql.conf.sample > /data/postgres/conf/postgres.conf

sh rm_postgres.sh

sh run_postgres.sh
