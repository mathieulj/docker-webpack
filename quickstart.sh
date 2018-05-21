#!/bin/sh

# Builds a base image the will contain the code, runtime and dependencies
docker build --tag docker-webpack .

# For devellopment, mount the code into the container and use a volume
# mount to overlay the node_modules so they dont end up on the host.
docker run -it --rm \
    --mount type=bind,source=`pwd`,target=/opt/docker-webpack \
    --mount type=volume,target=/opt/docker-webpack/node_modules \
    docker-webpack /bin/bash
