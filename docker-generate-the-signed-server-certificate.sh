#! /bin/bash

cd ~/.docker
# generate the signed server certificate
openssl x509 -addext "subjectAltName=IP:127.0.0.1" -req -days 365 -sha256 -in server.csr -CA ca.pem -CAkey ca-key.pem \
  -CAcreateserial -out server-cert.pem -extfile /home/think/.docker/extfile.cnf
cd ~/ettaews
