#!/bin/bash
mkdir -p /data/opensearch/data
chown -R 1000 /data/opensearch/data

mkdir -p /data/opensearch/logs
chown -R 1000 /data/opensearch/logs

sh run_opensearch.sh

sh show_opensearch.sh
