#!/bin/bash

sh ./init.sh

if [ ! -f ./jenkins/install-plugins.txt ]; then
    cp ./jenkins/install-plugins.txt.default ./jenkins/install-plugins.txt
fi

docker-compose up -d jenkins