#!/bin/bash

podman volume create gitea_server
podman volume create gitea_db

podman-compose up -d

podman-compose ps
