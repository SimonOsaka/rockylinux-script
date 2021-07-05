#!/bin/bash
sh stop_redis.sh
docker-compose -p redis_sentinel_server down
