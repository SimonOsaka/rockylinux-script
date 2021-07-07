#!/bin/bash
docker-compose -p opensearch_server -f docker-compose-cluster.yml stop opensearch-node1 opensearch-node2 opensearch-dashboards
