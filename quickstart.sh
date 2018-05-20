#!/bin/sh

# Builds a base image the will contain the code, runtime and dependencies
docker build --tag learn-webpack .

# For devellopment, mount the code into the container and use a volume
# mount to overlay the node_modules so they dont end up on the host.
docker run -it --rm \
    --mount type=bind,source=`pwd`,target=/opt/learn-webpack \
    --mount type=volume,target=/opt/learn-webpack/node_modules \
    learn-webpack /bin/bash
