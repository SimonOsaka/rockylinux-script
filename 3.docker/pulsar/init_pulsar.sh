#!/bin/bash
mkdir -p /data/pulsar/data
mkdir -p /data/pulsar/conf

sh run_pulsar.sh

sh show_pulsar.sh
