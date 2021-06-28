#!/bin/bash
sh stop_debezium.sh

docker-compose -p debezium_server down
