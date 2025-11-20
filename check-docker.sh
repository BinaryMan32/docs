#!/bin/bash -e
IMAGE_TAG=$(basename "$(readlink -f "${BASH_SOURCE[0]}")")
docker build --tag ${IMAGE_TAG} .
docker run --rm --user=${UID}:${GID} -v ${PWD}:/docs ${IMAGE_TAG} build --strict
