#!/bin/bash
podman pod ps
echo ---
podman-compose -p opensearch_server_podman -f=docker-compose-single.yml ps
