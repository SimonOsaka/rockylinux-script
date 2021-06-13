#!/bin/bash
podman run -itd --name postgres_podman \
--privileged=true \
-v /data/postgres/data:/var/lib/postgresql/data \
-v /data/postgres/conf/postgres.conf:/etc/postgresql/postgresql.conf \
-p 5432:5432 \
-e POSTGRES_PASSWORD=123456 \
docker.io/postgres:alpine \
-c 'config_file=/etc/postgresql/postgresql.conf'
