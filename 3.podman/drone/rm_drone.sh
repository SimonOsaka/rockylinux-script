#!/bin/bash

podman exec drone_server_podman_docker_1 docker stop runner_docker

podman exec drone_server_podman_docker_1 docker rm runner_docker

podman-compose -p drone_server_podman down
