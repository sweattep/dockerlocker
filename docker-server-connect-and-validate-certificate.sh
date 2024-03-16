#! /bin/bash

# Remove the existing docker process 
sudo rm /var/run/docker.pid
sudo rm /var/lib/docker/volumes/metadata.db
sudo cp /home/think/.docker/ca.pem /root/.docker/
sudo cp /home/think/.docker/cert.pem /root/.docker/
sudo cp /home/think/.docker/key.pem /root/.docker/
sudo cp /home/think/.docker/ca-key.pem /root/.docker/
sudo cp /home/think/.docker/server-cert.pem /root/.docker/
sudo cp /home/think/.docker/server-key.pem /root/.docker/

# Reset permissions for pem and csr files
cd ~/.docker
chmod -v 0777 *.pem
chmod -v 0777 *.csr

# Now you can make the Docker daemon only accept connections from clients providing a certificate trusted by your CA
echo 'Starting dockerd'
sudo dockerd  --tlsverify --debug --log-level error -H=$HOST:2376
cd ~/ettaews
