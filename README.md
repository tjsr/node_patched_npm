# node_patched_npm

This is a simple node docker image that already has the latest npm baked in as very recent version of node have had some vulnerabilities when it comes to packages like `ip` an `tar`.  These images are simply intended to save the step of having to install npm each time a container image is built.

This will build a matrix of node images with recent in-use node versions.

The current matrix is:

- node
  - 22.19.0
  - 24.7.0
- alpine
  - 3.21
  - 3.22
- npm
  - 11.6.0

## Architecture

This image is built for both linux/amd64 and linux/arm64 (Mac/AWS Graviton)

## Usage

You may need to log in to ghcr.io to access/pull images.  Try `docker pull ghcr.io/tjsr/node_patched_npm:22.16.0-alpine3.22-npm11.4.1` or even just
`docker pull ghcr.io/tjsr/node_patched_npm:latest`

## Smaller images

You can use this image as a builder to build an even smaller image that doesn't have npm at all, after building the base image. We can take that even further by using a bundler to further bundle anything included from node_modules in to a single package.  See [Smaller images without yarn/npm](https://github.com/nodejs/docker-node/blob/main/docs/BestPractices.md#smaller-images-without-npmyarn).

## Settings

This image now has notifications for funding and updates disabled.
