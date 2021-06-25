#!/bin/bash
docker-compose -p es_server -f docker-compose-cluster.yml stop es01 es02 es03
