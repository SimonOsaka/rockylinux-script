#!/bin/bash
sh stop_jira.sh

podman-compose -p jira_server_podman down
