#! /bin/bash

# sign the public key
cd ~/.docker
# allow connections using 127.0.0.1:
echo subjectAltName = DNS:$HOST,IP:127.0.0.1 >> extfile.cnf

# Set the Docker daemon key's extended usage attributes to be used only for server authentication:
echo extendedKeyUsage = serverAuth >> extfile.cnf
cd ~/ettaews
