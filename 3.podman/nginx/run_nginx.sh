#!/bin/bash
docker run -it --name nginx_server \
--privileged=true \
-p 80:80 \
-v /data/nginx/html:/usr/share/nginx/html \
-v /data/nginx/log:/var/log/nginx \
-v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
-v /data/nginx/conf.d:/etc/nginx/conf.d \
-d nginx:stable-alpine
