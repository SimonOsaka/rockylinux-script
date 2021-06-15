#!/bin/bash

mkdir -p /data/gitea/data
mkdir -p /data/gitea/postgres/data

sh run_gitea.sh

podman-compose ps
