# this script will build an image for the lbg.py app and deploy the container to run it
# Clean up
#! /bin/bash
docker stop $(docker ps -q) || true
docker rm $(docker ps -aq) || true
docker rmi $(docker images -aq) || true
docker network rm lbg-pynet || true

# Build
docker network create lbg-pynet
docker build -t lbg-python:v1 .

# Deploy
docker run -d -p 5000:5000 --network lbg-pynet --name pyapp lbg-python:v1

# Test
curl http://35.230.151.94:5000/index.html

#Make file executable
chmod +x example.sh