#!/bin/bash
sh stop_skywalking.sh

docker-compose -p skywalking_server down
