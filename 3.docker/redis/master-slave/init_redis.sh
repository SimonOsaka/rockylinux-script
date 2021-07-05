#!/bin/bash

mkdir -p /data/redis/master-slave/master/data
mkdir -p /data/redis/master-slave/master/conf
mkdir -p /data/redis/master-slave/slave1/data
mkdir -p /data/redis/master-slave/slave1/conf
mkdir -p /data/redis/master-slave/slave2/data
mkdir -p /data/redis/master-slave/slave2/conf

wget -4 http://download.redis.io/redis-stable/redis.conf -O redis.conf
#
# master conf
#
cp redis.conf /data/redis/master-slave/master/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^# requirepass foobared|requirepass 123456|g' \
    -i.bak \
    /data/redis/master-slave/master/conf/redis.conf

#
# slave1 conf
#
cp redis.conf /data/redis/master-slave/slave1/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^port 6379|port 6380|g' \
    -i.bak \
    /data/redis/master-slave/slave1/conf/redis.conf

echo 'slaveof redis_master_server 6379' >> /data/redis/master-slave/slave1/conf/redis.conf
echo 'masterauth "123456"' >> /data/redis/master-slave/slave1/conf/redis.conf

#
# slave2 conf
#
cp redis.conf /data/redis/master-slave/slave2/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^port 6379|port 6381|g' \
    -i.bak \
    /data/redis/master-slave/slave2/conf/redis.conf

echo 'slaveof redis_master_server 6379' >> /data/redis/master-slave/slave2/conf/redis.conf
echo 'masterauth "123456"' >> /data/redis/master-slave/slave2/conf/redis.conf

sh run_redis.sh

sh show_redis.sh
