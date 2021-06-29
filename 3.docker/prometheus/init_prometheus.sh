#!/bin/bash
mkdir -p /data/prometheus/conf
mkdir -p /data/prometheus/data
mkdir -p /data/prometheus/grafana/data
mkdir -p /data/prometheus/alertmanager/data
mkdir -p /data/prometheus/alertmanager/conf

chown -R nobody:nobody /data/prometheus/conf /data/prometheus/data
chmod -R 777 /data/prometheus/grafana/data
chown -R nobody:nobody /data/prometheus/alertmanager/data /data/prometheus/alertmanager/conf

cp prometheus.yml /data/prometheus/conf
cp alertmanager.yml /data/prometheus/alertmanager/conf

sh run_prometheus.sh

sh show_prometheus.sh
