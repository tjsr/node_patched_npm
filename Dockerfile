ARG NODE_VERSION=20.12.2
ARG ALPINE_VERSION=3.19
FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} as node_patched_npm
ARG NPM_VERSION=10.6.0
RUN npm --no-update-notifier install -g npm@${NPM_VERSION}
