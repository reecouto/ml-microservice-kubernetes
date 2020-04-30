#!/usr/bin/env bash
docker_id="reecouto"
image_name="sklearn-flask-app"
version="latest"

# Build image and add a descriptive tag
docker image build -t ${docker_id}/${image_name}:${version} .

# List docker images
docker image ls | grep ${image_name}

# Run flask app
docker container run --rm --name ${image_name} -p 8000:80 \
       ${docker_id}/${image_name}:${version}
