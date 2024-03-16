#! /bin/bash

echo 'Starting docker postgresml container'
docker run \
    -it \
    -v postgresml_data:/var/lib/postgresql \
    -p 5433:5432 \
    -p 8000:8000 \
    ghcr.io/postgresml/postgresml:2.7.12 \
    sudo -u postgresml psql -d postgresml
