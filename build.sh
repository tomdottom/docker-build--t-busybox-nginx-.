#!/bin/bash

ansible-playbook build_nginx_binary.yml
docker build -t busybox-nginx .