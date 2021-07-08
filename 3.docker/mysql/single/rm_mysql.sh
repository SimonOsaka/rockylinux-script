#!/bin/bash
sh stop_mysql.sh
docker-compose -p mysql_server down
