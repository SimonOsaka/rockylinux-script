#!/bin/bash
docker run -itd --name postgres_server \
--privileged=true \
-v /data/postgres/data:/var/lib/postgresql/data \
-v /data/postgres/conf/postgres.conf:/etc/postgresql/postgresql.conf \
-p 5432:5432 \
-e POSTGRES_PASSWORD=123456 \
postgres:alpine \
-c 'config_file=/etc/postgresql/postgresql.conf'
