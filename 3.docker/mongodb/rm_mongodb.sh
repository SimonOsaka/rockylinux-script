#!/bin/bash
sh stop_mongodb.sh

docker-compose -p mongodb_server down
