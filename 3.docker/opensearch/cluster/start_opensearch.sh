#!/bin/bash
docker-compose -p opensearch_server_podman -f docker-compose-cluster.yml start opensearch-node1 opensearch-node2 opensearch-dashboards