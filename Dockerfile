FROM node:10
WORKDIR /opt/docker-webpack
COPY package.json yarn.lock ./
RUN yarn
COPY * ./
