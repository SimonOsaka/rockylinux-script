#!/bin/bash
podman pod ps
echo ---
podman-compose -p openldap_server_podman ps
