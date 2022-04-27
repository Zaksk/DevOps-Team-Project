#!/bin/bash
dockercompose build --parallel
docker login -u $DOCKER_CREDS_USR -p $DOCKER_CREDS_PSW

