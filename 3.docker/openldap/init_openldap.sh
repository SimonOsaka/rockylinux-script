#!/bin/bash
mkdir -p /data/openldap/ldap
mkdir -p /data/openldap/slapd.d
mkdir -p /data/openldap/certs

sh run_openldap.sh

sh show_openldap.sh
