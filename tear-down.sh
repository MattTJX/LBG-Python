#! /bin/bash
# this script will destroy all containers, images and networks when required
docker stop $(docker ps -q) || true
docker rm $(docker ps -aq) || true
docker rmi $(docker images -aq) || true
docker network rm lbg-pynet || true