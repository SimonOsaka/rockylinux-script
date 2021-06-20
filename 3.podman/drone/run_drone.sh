#!/bin/bash
podman-compose -p drone_server_podman up -d

sh docker_runner.sh
