#! /bin/bash

# First, on the Docker daemon's host machine, generate CA private and public keys
cd ~/.docker
openssl genrsa -aes256 -out ca-key.pem 4096
openssl genrsa -out server-key.pem 4096
chmod 777 *.pem
# Add 127.0.0.1 as the subject alternative name (SAN): https://discuss.hashicorp.com/t/cannot-validate-certificate-for-127-0-0-1-because-it-doesnt-contain-any-ip-sans/36884
openssl req -new -x509 -days 365 -key ca-key.pem -addext "subjectAltName=IP:127.0.0.1" -sha256 -out ca.pem
openssl req -subj "/CN=$HOST" -addext "subjectAltName=IP:127.0.0.1" -sha256 -new -key server-key.pem -out server.csr
chmod 777 *.csr
cd ~/ettaews
