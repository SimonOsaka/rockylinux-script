#!/bin/bash
sh stop_neo4j.sh

docker-compose -p neo4j_server down
