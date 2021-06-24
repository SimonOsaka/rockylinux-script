#!/bin/bash
sh stop_opensearch.sh

docker-compose -p opensearch_server_podman -f docker-compose-cluster.yml down
