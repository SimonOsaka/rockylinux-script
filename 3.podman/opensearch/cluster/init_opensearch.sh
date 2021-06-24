#!/bin/bash
cat /proc/sys/vm/max_map_count

mkdir -p /data/opensearch/data1
chown -R 1000 /data/opensearch/data1

mkdir -p /data/opensearch/logs1
chown -R 1000 /data/opensearch/logs1

mkdir -p /data/opensearch/data2
chown -R 1000 /data/opensearch/data2

mkdir -p /data/opensearch/logs2
chown -R 1000 /data/opensearch/logs2

sh run_opensearch.sh

sh show_opensearch.sh
