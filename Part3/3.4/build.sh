#!/bin/sh

git clone "https://github.com/$1" clone_repo

docker build -t $2 ./clone_repo

rm -rf ./clone_repo

docker login -p ${DOCKER_PWD} -u ${DOCKER_USER}

docker image push $2
