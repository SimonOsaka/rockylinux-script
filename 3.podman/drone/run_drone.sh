#!/bin/bash
podman-compose -p drone_server_podman up -d

sleep 10

podman exec drone_server_podman_docker_1 \
docker run -itd \
-e DRONE_RPC_HOST=192.168.56.102:9000 \
-e DRONE_RPC_PROTO=http \
-e DRONE_RPC_SECRET=bea26a2221fd8090ea38720fc445eca6 \
-e DRONE_RUNNER_NAME=${HOSTNAME} \
-e DRONE_RUNNER_CAPACITY=2 \
-v /var/run/docker.sock:/var/run/docker.sock \
--env-file=/opt/.env \
-p 9001:3000 \
--add-host docker:127.0.0.1 \
docker.io/drone/drone-runner-docker:latest
