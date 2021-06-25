#!/bin/bash
sysctl -w vm.max_map_count=262144

docker-compose -p es_server -f docker-compose-cluster.yml up -d


