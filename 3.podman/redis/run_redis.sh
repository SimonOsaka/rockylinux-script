#!/bin/bash
docker run -itd --name redis_server \
--privileged=true \
-v /data/redis/data:/data \
-v /data/redis/conf:/etc/redis \
-p 6379:6379 \
redis:alpine \
redis-server /etc/redis/redis.conf \
--requirepass "123456"
