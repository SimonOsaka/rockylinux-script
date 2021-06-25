#!/bin/bash
mkdir -p /data/influxdb/data
mkdir -p /data/influxdb/config

sh run_influxdb.sh

sh show_influxdb.sh
