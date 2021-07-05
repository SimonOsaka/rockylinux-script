#!/bin/bash
sh stop_redis.sh
docker-compose -p redis_master_slave_server down
