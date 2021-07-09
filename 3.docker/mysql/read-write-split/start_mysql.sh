#!/bin/bash
docker-compose -p mysql_server start master slave1 slave2 proxysql
