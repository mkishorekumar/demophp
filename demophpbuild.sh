#!/bin/bash

echo "building docker image"

l_basename=$(basename ${0})

docker stop hellokishore
docker rm hellokishore
docker build -t hello-world .  | tee -a "${l_basename}".log

docker run -d --name hellokishore -p 8085:8085 -v /home/ubuntu1/demophp/src:/var/www/html hello-world


echo "done building docker image"
echo ""
echo ""
