#!/bin/bash

mkdir -p /data/gitea/data
mkdir -p /data/gitea/postgres/data

podman-compose up -d

podman-compose ps
