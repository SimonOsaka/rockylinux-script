#!/bin/bash
sh stop_influxdb.sh

docker-compose -p influxdb_server down
