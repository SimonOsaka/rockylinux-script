#!/bin/bash
sysctl -w vm.max_map_count=524288
sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -u 8192

docker-compose -p sonarqube_server up -d
