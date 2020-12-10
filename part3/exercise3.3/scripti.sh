#!/bin/bash
# Args: 
# 1: github user
# 2: github repo (same will be used for docker hub)
# 3: docker username

# Clone repository
repo="https://github.com/"$1"/"$2".git"
git clone $repo

# Build Dockerfile
cd $2
docker build -t $3"/"$2 .

# Log into docker and push the image
docker login
docker push $3"/"$2
