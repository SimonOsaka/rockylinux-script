#!/bin/bash
sh stop_openldap.sh

podman-compose -p openldap_server_podman down
