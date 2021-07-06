#!/bin/bash
docker-compose -p postgres_ha_server start pg-0 pg-1 pg-2 pg-3 pgpool
