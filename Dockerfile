ARG NODE_VERSION=20.14.0
ARG ALPINE_VERSION=3.20
FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} as node_patched_npm
ARG NPM_VERSION=10.8.0
RUN npm --no-update-notifier install -g npm@${NPM_VERSION}
