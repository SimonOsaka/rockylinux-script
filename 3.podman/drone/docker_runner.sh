#!/bin/bash
sleep 10
echo docker runner ...

podman exec drone_server_podman_docker_1 \
docker run -d \
-e DRONE_RPC_HOST=10.0.2.15:9000 \
-e DRONE_RPC_PROTO=http \
-e DRONE_RPC_SECRET=55cc8950dbf26ca82d740d344e5196fd \
-e DRONE_RUNNER_NAME=runner_docker \
-e DRONE_RUNNER_CAPACITY=2 \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 9002:3000 \
--name runner_docker \
docker.io/drone/drone-runner-docker:latest


