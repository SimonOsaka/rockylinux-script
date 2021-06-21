#!/bin/bash
sh stop_mongodb.sh

podman-compose -p mongodb_server_podman down
