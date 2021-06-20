#!/bin/bash
sh stop_nexus3.sh

podman-compose -p nexus3_server_podman down
