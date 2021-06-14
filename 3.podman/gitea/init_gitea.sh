#!/bin/bash

podman create volume gitea_server
podman create volume gitea_db

podman-compose up -d

podman-compose ps
