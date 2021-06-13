#!/bin/bash
sh pull_redis.sh

mkdir -p /data/redis/data
mkdir -p /data/redis/conf

wget http://download.redis.io/redis-stable/redis.conf \
-o /data/redis/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -i.bak \
    /data/redis/conf/redis.conf

sh run_redis.sh
