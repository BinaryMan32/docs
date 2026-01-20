#!/bin/bash -e
# ZENSICAL_VERSION is managed by a renovate customManager regex
ZENSICAL_VERSION="0.0.17"
exec docker run --rm --user ${UID}:${GID} --volume ${PWD}:/docs zensical/zensical:$ZENSICAL_VERSION build --strict
