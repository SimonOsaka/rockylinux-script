#!/bin/bash

systemctl stop firewalld.service
systemctl disable firewalld.service

systemctl status firewalld.service
