#!/bin/bash
podman run -itd --name drone_server_podman \
-p 80:80 \
-p 443:443 \
-e DRONE_GITEA_SERVER=gitea.mydomain.example \
-e DRONE_GITEA_CLIENT_ID={{DRONE_GITEA_CLIENT_ID}} \
-e DRONE_GITEA_CLIENT_SECRET={{DRONE_GITEA_CLIENT_SECRET}} \
-e DRONE_RPC_SECRET={{DRONE_RPC_SECRET}} \
-e DRONE_SERVER_HOST=drone.mydomain.example \
-e DRONE_SERVER_PROTO=https \
-v /data/drone/data:/data:z \
--restart=always \
docker.io/drone/drone:latest


