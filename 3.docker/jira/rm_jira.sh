#!/bin/bash
sh stop_jira.sh

docker-compose -p jira_server down
