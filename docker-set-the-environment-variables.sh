#! /bin/bash

#set the HOST, DOCKER_HOST, DOCKER_CERT_PATH, and DOCKER_TLS_VERIFY variables
export HOST=127.0.0.1
export DOCKER_HOST=tcp://$HOST:2376 
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/home/think/.docker

