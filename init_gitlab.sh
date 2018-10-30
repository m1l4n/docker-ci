#!/bin/bash

sh ./init.sh

if [ ! -f ./gitlab-runner/config/config.toml ]; then
    cp ./gitlab-runner/config/config.toml.default ./gitlab-runner/config/config.toml
fi

docker-compose up -d gitlab
docker-compose up -d gitlab-runner