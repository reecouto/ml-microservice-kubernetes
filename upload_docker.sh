#!/usr/bin/env bash

# Create dockerpath
dockerpath="reecouto/sklearn-flask-app"

# This file tags and uploads an image to Docker Hub
docker image tag ${dockerpath}:latest ${dockerpath}:1.0

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login

# Push image to a docker repository
docker image push ${dockerpath}:1.0