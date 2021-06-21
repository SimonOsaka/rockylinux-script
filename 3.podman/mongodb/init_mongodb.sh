#!/bin/bash
mkdir -p /data/mongodb/data
chown -R 200 /data/mongodb/data

mkdir -p /data/mongodb/log

sh run_mongodb.sh

sh show_mongodb.sh
