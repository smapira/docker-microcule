# docker-microcule

This repository contains Dockerfile for [microcule](https://github.com/Stackvana/microcule)
container, based on the [tensorflow](https://hub.docker.com/r/tensorflow/tensorflow/) image.

## Stacks
- python 3
- [nodejs 8](https://github.com/nodesource/distributions)
- [tensorflow:latest](https://github.com/tensorflow/tensorflow)
- [microcule](https://github.com/Stackvana/microcule)
- [mon](https://github.com/tj/mon)
- [yarn](https://github.com/yarnpkg/yarn)

## Install

As a prerequisite, you need [Docker](https://docker.com) to be installed.

To download this image from the public docker hub:

	$ docker pull smapira/docker-microcule

To re-build this image from the dockerfile:

	$ docker build -t docker-microcule .

## Usage

To run:
```bash
NAME_SPACE=registry
CONTAINER=repository-$(date +%Y-%m-%d)
docker build -t ${NAME_SPACE}/${CONTAINER} .
docker run -it --name ${CONTAINER} ${NAME_SPACE}/${CONTAINER} bash
```
## Super Thanks

