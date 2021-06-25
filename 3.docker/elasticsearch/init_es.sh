#!/bin/bash
cat /proc/sys/vm/max_map_count

mkdir -p /data/es/data01
chown -R 1000 /data/es/data01

mkdir -p /data/es/logs01
chown -R 1000 /data/es/logs01

mkdir -p /data/es/data02
chown -R 1000 /data/es/data02

mkdir -p /data/es/logs02
chown -R 1000 /data/es/logs02

mkdir -p /data/es/data03
chown -R 1000 /data/es/data03

mkdir -p /data/es/logs03
chown -R 1000 /data/es/logs03

sh run_es.sh

sh show_es.sh
