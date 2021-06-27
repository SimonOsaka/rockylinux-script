#!/bin/bash
mkdir -p /data/elk/elasticsearch/data
mkdir -p /data/elk/elasticsearch/plugins
chown -R 1000 /data/elk/elasticsearch/data
chown -R 1000 /data/elk/elasticsearch/plugins
mkdir -p /data/elk/logstash
cp logstash.conf /data/elk/logstash

sh run_elk.sh

sh show_elk.sh
