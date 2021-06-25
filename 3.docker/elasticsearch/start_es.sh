#!/bin/bash
docker-compose -p es_server -f docker-compose-cluster.yml start es01 es02 es03
