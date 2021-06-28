FROM postgres:13-alpine

LABEL maintainer="Debezium Community"
ENV PLUGIN_VERSION=v1.6.0.CR1

ENV WAL2JSON_COMMIT_ID=wal2json_2_3

RUN apk add --no-cache protobuf-c-dev

COPY /postgres-decoderbufs-1.6.0.CR1 /postgres-decoderbufs-1.6.0.CR1
COPY /wal2json-wal2json_2_3 /wal2json-wal2json_2_3
# Compile the plugins from sources and install
RUN apk add --no-cache --virtual .debezium-build-deps gcc clang llvm make musl-dev pkgconf \
    && (cd /postgres-decoderbufs-1.6.0.CR1 && make && make install) \
    && rm -rf postgres-decoderbufs-1.6.0.CR1 \
    && (cd /wal2json-wal2json_2_3 && make && make install) \
    && rm -rf wal2json-wal2json_2_3 \
    && apk del .debezium-build-deps

# Copy the custom configuration which will be passed down to the server (using a .sample file is the preferred way of doing it by 
# the base Docker image)
COPY postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample

# Copy the script which will initialize the replication permissions
COPY /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
