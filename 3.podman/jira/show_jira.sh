#!/bin/bash
podman pod ps
echo ---
podman-compose -p jira_server_podman ps
