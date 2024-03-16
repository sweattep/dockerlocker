#! /bin/bash

# Check server connection
netstat -an | grep :2376

# To connect to Docker and validate its certificate, provide your client keys, certificates and trusted CA:
# Docker over TLS should run on TCP port 2376:
cd ~/.docker
echo 'Starting dockerc'
docker --tlsverify -H=$HOST:2376 version

cd ~/ettaews
