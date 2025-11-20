#!/bin/bash -e
LOCAL_PORT=8080
IMAGE_TAG=$(basename "$(readlink -f "${BASH_SOURCE[0]}")")
docker build --tag ${IMAGE_TAG} .
sensible-browser http://localhost:$LOCAL_PORT
docker run --rm -it --user=${UID}:${GID} -p $LOCAL_PORT:8000 -v ${PWD}:/docs ${IMAGE_TAG}
