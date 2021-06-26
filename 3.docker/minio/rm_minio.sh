#!/bin/bash
sh stop_minio.sh

docker-compose -p minio_server down
