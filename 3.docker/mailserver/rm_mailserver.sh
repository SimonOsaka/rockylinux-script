#!/bin/bash
sh stop_mailserver.sh

docker-compose -p mailserver_server down
