#!/bin/bash

mkdir -p /data/redis/single/data
mkdir -p /data/redis/single/conf

wget -4 http://download.redis.io/redis-stable/redis.conf \
-O /data/redis/single/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -i.bak \
    /data/redis/single/conf/redis.conf

sh run_redis.sh

sh show_redis.sh
