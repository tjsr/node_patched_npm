ARG NODE_VERSION=22.16.0
ARG ALPINE_VERSION=3.21
FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS node_patched_npm
ARG NODE_VERSION=22.16.0
ARG ALPINE_VERSION=3.21
ARG NPM_VERSION=11.4.1
LABEL org.opencontainers.image.description="node_patched_npm is a Node.js image with most up-to-date npm versions globally installed and some global notifications settings disabled."
LABEL org.opencontainers.image.authors="Tim Rowe <tim@tjsr.id.au>"
LABEL org.opencontainers.image.source="https://github.com/tjsr/node_patched_npm.git"
LABEL description="Node.js with most up-to-date npm versions globally installed."
LABEL version="node${NODE_VERSION}-alpine$ALPINE_VERSION}-npm${NPM_VERSION}"
RUN npm config set fund false --location=global && \
  npm config set update-notifier false --location=global && \
  npm install -g npm@${NPM_VERSION}
