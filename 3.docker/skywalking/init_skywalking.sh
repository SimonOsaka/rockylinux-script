#!/bin/bash
mkdir -p /data/skywalking/es/data
mkdir -p /data/skywalking/es/plugins

chown -R 1000 /data/skywalking/es/data
chown -R 1000 /data/skywalking/es/plugins

sh run_skywalking.sh

sh show_skywalking.sh
