#!/bin/bash
sh stop_postgres.sh
docker-compose -p postgres_replication_server down
