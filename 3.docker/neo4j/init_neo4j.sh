#!/bin/bash
mkdir -p /data/neo4j/data
mkdir -p /data/neo4j/conf
mkdir -p /data/neo4j/logs

sh run_neo4j.sh

sh show_neo4j.sh
