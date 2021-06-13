#!/bin/bash
podman run -itd --name redis_podman \
--privileged=true \
-v /data/redis/data:/data \
-v /data/redis/conf:/etc/redis \
-p 6379:6379 \
docker.io/redis:alpine \
redis-server /etc/redis/redis.conf \
--requirepass "123456"
