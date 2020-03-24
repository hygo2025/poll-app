#!/bin/bash
cd ./poll-server;
pwd;
docker-compose up --build -d;
cd ../poll-client;
docker run --publish 8000:8080 -it $(docker build -q .);
pwd;