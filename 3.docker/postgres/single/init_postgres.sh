#!/bin/bash

mkdir -p /data/postgres/data
mkdir -p /data/postgres/conf

cp postgres.conf /data/postgres/conf

sh run_postgres.sh

sh show_postgres.sh
