#!/bin/bash
sh stop_meilisearch.sh
docker-compose -p meilisearch_server down
