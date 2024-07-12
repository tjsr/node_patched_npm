ARG NODE_VERSION=20.15.1
ARG ALPINE_VERSION=3.20
FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS node_patched_npm
ARG NPM_VERSION=10.8.2
LABEL org.opencontainers.image.authors="Tim Rowe <tim@tjsr.id.au>"
LABEL description="Node.js with most up-to-date npm versions globally installed."
LABEL version="node$NODE_VERSION-alpine$ALPINE_VERSION-npm$NPM_VERSION"
RUN npm config set fund false --location=global && \
  npm config set update-notifier false --location=global && \
  npm install -g npm@${NPM_VERSION}
