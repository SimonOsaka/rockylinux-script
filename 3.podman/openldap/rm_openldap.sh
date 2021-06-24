#!/bin/bash
sh stop_openldap.sh

docker-compose -p openldap_server down
