#!/bin/bash
docker-compose build --parallel
docker login -u $DOCKER_LOGIN_USR -p $DOCKER_LOGIN_PSW