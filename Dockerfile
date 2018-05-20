FROM node:10
WORKDIR /opt/learn-webpack
COPY package.json yarn.lock ./
RUN yarn
COPY * ./
