#! /bin/bash

cd ~/.docker
# For client authentication, create a client key:
openssl genrsa -addext "subjectAltName=IP:127.0.0.1" -out key.pem 4096
# and use that to create a certificate signing request:
openssl req -subj '/CN=client' -new -key key.pem -out client.csr
# To make the key suitable for client authentication, create a new extensions config file:
echo extendedKeyUsage = clientAuth > extfile-client.cnf
cd ~/ettaews
