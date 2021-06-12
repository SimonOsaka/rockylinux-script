#!/bin/bash
podman run -it --name nginx_podman \
--privileged=true \
-p 80:80 \
-v /data/nginx/html:/usr/share/nginx/html \
-v /data/nginx/log:/var/log/nginx \
-v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
-v /data/nginx/conf.d:/etc/nginx/conf.d \
-d docker.io/nginx:stable-alpine
