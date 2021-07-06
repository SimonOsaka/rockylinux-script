#!/bin/bash
mkdir -p /data/postgres/ha/pg_0/data /data/postgres/ha/pg_0/conf
mkdir -p /data/postgres/ha/pg_1/data /data/postgres/ha/pg_1/conf
mkdir -p /data/postgres/ha/pg_2/data /data/postgres/ha/pg_2/conf
mkdir -p /data/postgres/ha/pg_3/data /data/postgres/ha/pg_3/conf

cp postgres.conf /data/postgres/ha/pg_0/conf/postgresql.conf
cp postgres.conf /data/postgres/ha/pg_1/conf/postgresql.conf
cp postgres.conf /data/postgres/ha/pg_2/conf/postgresql.conf
cp postgres.conf /data/postgres/ha/pg_3/conf/postgresql.conf
 
chgrp -R root /data/postgres/ha/pg_0/conf /data/postgres/ha/pg_1/conf /data/postgres/ha/pg_2/conf /data/postgres/ha/pg_3/conf
chmod -R g+rwX /data/postgres/ha/pg_0/conf /data/postgres/ha/pg_1/conf /data/postgres/ha/pg_2/conf /data/postgres/ha/pg_3/conf

chown -R 1001:1001 /data/postgres/ha/pg_0/data
# chmod go-rwx /data/postgres/ha/pg_0/data
chown -R 1001:1001 /data/postgres/ha/pg_1/data
# chmod go-rwx /data/postgres/ha/pg_1/data
chown -R 1001:1001 /data/postgres/ha/pg_2/data
# chmod go-rwx /data/postgres/ha/pg_2/data
chown -R 1001:1001 /data/postgres/ha/pg_3/data
# chmod go-rwx /data/postgres/ha/pg_3/data

sh run_postgres.sh

sh show_postgres.sh
