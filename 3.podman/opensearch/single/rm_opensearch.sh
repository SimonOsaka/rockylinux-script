#!/bin/bash
sh stop_opensearch.sh

docker-compose -p opensearch_server -f docker-compose-single.yml down
