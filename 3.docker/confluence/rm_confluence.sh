#!/bin/bash
sh stop_confluence.sh

docker-compose -p confluence_server down
