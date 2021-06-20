#!/bin/bash
podman run -itd --name confluence_server_podman \
-p 8090:8090 \
-p 8091:8091 \
-v /data/confluence/data:/var/atlassian/application-data/confluence:z \
docker.io/atlassian/confluence:6.14.1


