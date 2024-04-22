# node_patched_npm

This is a simple node docker image that already has the latest npm baked in as very recent version of node have had some vulnerabilities when it comes to packages like `ip` an `tar`.  These images are simply intended to save the step of having to install npm each time a container image is built.

This will build a matrix of node images with recent in-use node versions.

The current matrix is:

- node
  + 18.20.2
  + 20.12.2
- alpine
  + 3.18
  + 3.19
- npm
  + 10.5.2

## Architecture

This image is built for both linux/amd64 and linux/arm64 (Mac/AWS Gravitron)

## Usage

You may need to log in to ghcr.io to access/pull images.  Try `docker pull ghcr.io/tjsr/node_patched_npm:20.12.2-alpine3.19-npm10.5.2` or even just
`docker pull ghcr.io/tjsr/node_patched_npm:latest`
