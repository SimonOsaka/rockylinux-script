#!/bin/bash
sh stop_opensearch.sh

podman-compose -p opensearch_server_podman -f docker-compose-single.yml down
