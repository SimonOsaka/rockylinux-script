#!/bin/bash

mkdir -p /data/redis/sentinel/s1/data
mkdir -p /data/redis/sentinel/s1/conf
mkdir -p /data/redis/sentinel/s2/data
mkdir -p /data/redis/sentinel/s2/conf
mkdir -p /data/redis/sentinel/s3/data
mkdir -p /data/redis/sentinel/s3/conf

REDIS_MASTER_IP=172.29.0.2
#
# s1 conf
#
cp redis.conf /data/redis/sentinel/s1/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^port 6379|port 26379|g' \
    -e 's|^# requirepass foobared|requirepass 123456|g' \
    -i.bak \
    /data/redis/sentinel/s1/conf/redis.conf

echo "sentinel monitor local-master ${REDIS_MASTER_IP} 6379 2" >> /data/redis/sentinel/s1/conf/redis.conf
echo "sentinel auth-pass local-master 123456" >> /data/redis/sentinel/s1/conf/redis.conf
echo "sentinel down-after-milliseconds local-master 30000" >> /data/redis/sentinel/s1/conf/redis.conf

#
# s2 conf
#
cp redis.conf /data/redis/sentinel/s2/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^port 6379|port 26380|g' \
    -e 's|^# requirepass foobared|requirepass 123456|g' \
    -i.bak \
    /data/redis/sentinel/s2/conf/redis.conf

echo "sentinel monitor local-master ${REDIS_MASTER_IP} 6379 2" >> /data/redis/sentinel/s2/conf/redis.conf
echo "sentinel auth-pass local-master 123456" >> /data/redis/sentinel/s2/conf/redis.conf
echo "sentinel down-after-milliseconds local-master 30000" >> /data/redis/sentinel/s2/conf/redis.conf

#
# s3 conf
#
cp redis.conf /data/redis/sentinel/s3/conf/redis.conf

sed -e 's|^bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g' \
    -e 's|^protected-mode yes|protected-mode no|g' \
    -e 's|^appendonly no|appendonly yes|g' \
    -e 's|^port 6379|port 26381|g' \
    -e 's|^# requirepass foobared|requirepass 123456|g' \
    -i.bak \
    /data/redis/sentinel/s3/conf/redis.conf

echo "sentinel monitor local-master ${REDIS_MASTER_IP} 6379 2" >> /data/redis/sentinel/s3/conf/redis.conf
echo "sentinel auth-pass local-master 123456" >> /data/redis/sentinel/s3/conf/redis.conf
echo "sentinel down-after-milliseconds local-master 30000" >> /data/redis/sentinel/s3/conf/redis.conf

sh run_redis.sh

sh show_redis.sh
