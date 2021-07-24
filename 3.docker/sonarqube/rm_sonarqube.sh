#!/bin/bash
sh stop_sonarqube.sh
docker-compose -p sonarqube_server down
