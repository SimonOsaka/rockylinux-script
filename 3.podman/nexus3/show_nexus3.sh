#!/bin/bash
podman pod ps
echo ---
podman-compose -p nexus3_server_podman ps
