#! /bin/bash

cd ~/.docker
# generate the client certificate
openssl x509 -addext "subjectAltName=IP:127.0.0.1" -req -days 365 -sha256 -in client.csr -CA ca.pem -CAkey ca-key.pem \
  -CAcreateserial -out cert.pem -extfile extfile-client.cnf
cd ~/ettaews
