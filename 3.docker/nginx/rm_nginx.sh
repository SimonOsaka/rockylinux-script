#!/bin/bash
sh stop_nginx.sh

docker-compose -p nginx_server down
