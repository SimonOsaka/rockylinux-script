#!/bin/bash
sh stop_elk.sh

docker-compose -p elk_server down
