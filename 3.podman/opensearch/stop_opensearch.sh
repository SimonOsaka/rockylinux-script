#!/bin/bash
podman-compose -p opensearch_server_podman -f docker-compose-single.yml stop opensearch opensearch-dashboards
