#!/bin/bash
docker-compose -p opensearch_server -f docker-compose-single.yml stop opensearch opensearch-dashboards
