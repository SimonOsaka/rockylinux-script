#!/bin/bash
sh stop_es.sh

docker-compose -p es_server -f docker-compose-cluster.yml down
