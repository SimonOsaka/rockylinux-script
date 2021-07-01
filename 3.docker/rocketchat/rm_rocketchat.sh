#!/bin/bash
sh stop_rocketchat.sh

docker-compose -p rocketchat_server down
