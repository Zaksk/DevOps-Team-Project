#!/bin/bash
sudo docker-compose build --parallel
sudo docker login -u $DOCKER_LOGIN_USR -p $DOCKER_LOGIN_PSW