#!/bin/bash
sh stop_mariadb.sh
docker-compose -p mariadb_server down
