#!/bin/bash
sh stop_prometheus.sh

docker-compose -p prometheus_server down
