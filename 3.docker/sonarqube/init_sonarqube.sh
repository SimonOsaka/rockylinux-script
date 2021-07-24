#!/bin/bash

mkdir -p /data/sonarqube/postgres
mkdir -p /data/sonarqube/postgres/data
mkdir -p /data/sonarqube/logs
mkdir -p /data/sonarqube/data
mkdir -p /data/sonarqube/extensions

sh run_sonarqube.sh

sh show_sonarqube.sh
