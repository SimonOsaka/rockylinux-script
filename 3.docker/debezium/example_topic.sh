#!/bin/bash
echo open file 'example.sql'
echo tutorial: server.name
echo inventory: schema
echo rocket: table
 
docker exec -i pulsar bin/pulsar-client consume -s my-subscription -n 0 persistent://public/default/tutorial.inventory.rocket
