#!/bin/bash
docker-compose -p opensearch_server -f docker-compose-single.yml start opensearch opensearch-dashboards
