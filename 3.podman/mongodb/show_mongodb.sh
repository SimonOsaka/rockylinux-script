#!/bin/bash
podman pod ps
echo ---
podman-compose -p mongodb_server_podman ps
