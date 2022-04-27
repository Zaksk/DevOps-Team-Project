#!/bin/bash
sudo docker-compose build --parallel
sudo docker login -u $DOCKER_CREDS_USR -p $DOCKER_CREDS_PSW

