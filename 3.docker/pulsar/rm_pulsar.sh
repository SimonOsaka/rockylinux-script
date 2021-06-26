#!/bin/bash
sh stop_pulsar.sh

docker-compose -p pulsar_server down
