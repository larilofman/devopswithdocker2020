#!/bin/bash
# Args: 
# 1: github user
# 2: github repo (same will be used for docker hub)
# 3: docker username

repo="https://github.com/"$1"/"$2".git"
git clone $repo

cd $2
docker build -t $2 .
docker tag script_test $3"/"$2
docker login
docker push $3"/"$2
