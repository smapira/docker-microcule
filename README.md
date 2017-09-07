# docker-microcule

This repository contains Dockerfile for [microcule](https://github.com/Stackvana/microcule)
container, based on the [tensorflow](https://hub.docker.com/r/tensorflow/tensorflow/) image.

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

## cat /etc/*release
```bash
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04.3 LTS"
NAME="Ubuntu"
VERSION="16.04.3 LTS (Xenial Xerus)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 16.04.3 LTS"
VERSION_ID="16.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
VERSION_CODENAME=xenial
UBUNTU_CODENAME=xenial
```

## Super Thanks
### Stacks
- python 3
- [nodejs 8](https://github.com/nodesource/distributions)
- [tensorflow:latest](https://github.com/tensorflow/tensorflow)
- [microcule](https://github.com/Stackvana/microcule)
- [mon](https://github.com/tj/mon)
- [yarn](https://github.com/yarnpkg/yarn)
- ruby
- rust

## Upload history
```bash
docker login
docker build -t smapira/docker-microcule .
docker push smapira/docker-microcule
```
