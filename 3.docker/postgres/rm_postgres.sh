#!/bin/bash
sh stop_postgres.sh
docker-compose -p postgres_server down
