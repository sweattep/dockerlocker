#! /bin/bash

source docker-set-the-docker-directory.sh
source docker-set-the-environment-variables.sh
source docker-generate-ca-private-and-public-keys.sh 
source docker-create-a-client-key-and-csr.sh
source docker-sign-the-public-key.sh
source docker-generate-the-signed-server-certificate.sh
source docker-generate-the-signed-client-certificate.sh 
source docker-server-connect-and-validate-certificate.sh 
source docker-client-connect-and-validate-certificate.sh 
source docker-secure-by-default.sh
source docker-run.sh
source docker-cleanup.sh
