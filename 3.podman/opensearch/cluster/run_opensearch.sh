#!/bin/bash
sysctl -w vm.max_map_count=262144

docker-compose -p opensearch_server_podman -f docker-compose-cluster.yml up -d


