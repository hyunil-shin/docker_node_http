#!/bin/bash

docker build . -t node_http
docker stop http
docker rm http
docker run -d -p 80:8080 --name=http node_http

sleep 3s
docker logs --tail 10  http
echo "http running 80 port"
