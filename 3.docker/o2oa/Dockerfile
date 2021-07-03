# reference:
# https://github.com/hefanbo/o2oa-docker
# https://github.com/heycyril/o2oa-docker
#
FROM alpine:3.14 as builder
WORKDIR /opt
ARG O2OA_FILE=o2server-6.1.3-linux-x64.zip
ARG O2OA_DOWNLOAD=http://mirror1.o2oa.net/download
# ADD $O2OA_DOWNLOAD/$O2OA_FILE .
COPY $O2OA_FILE .
RUN unzip $O2OA_FILE &&  mkdir -p o2server/config
RUN sed "1 a \ \ \"autoStart\":\ true," o2server/configSample/node_127.0.0.1.json > o2server/config/node_127.0.0.1.json

FROM phusion/baseimage:master-amd64
WORKDIR /opt
ENV WEB_PORT=80 \
  NODE_PORT=20010 \
  APP_PORT=20020 \
  CENTER_PORT=20030 \
  STORAGE_PORT=20040 \
  DATA_PORT=20050 \
  DATA_WEB_PORT=20051

COPY --from=builder /opt/o2server /opt/o2server
RUN apt-get update && env DEBIAN_FRONTEND=noninteractive apt-get install -y fontconfig
COPY docker-entrypoint.sh /opt/docker-entrypoint/
ENTRYPOINT ["/opt/docker-entrypoint/docker-entrypoint.sh"]
VOLUME /opt/o2server/config /opt/o2server/local
EXPOSE $WEB_PORT $APP_PORT $CENTER_PORT
HEALTHCHECK CMD curl --connect-timeout 120 --fail http://localhost:$WEB_PORT || exit 1
