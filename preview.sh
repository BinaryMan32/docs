#!/bin/bash -e
# ZENSICAL_VERSION is managed by a renovate customManager regex
ZENSICAL_VERSION="0.0.16"
LOCAL_PORT=8080
sensible-browser http://localhost:$LOCAL_PORT
exec docker run --rm --interactive --tty --publish $LOCAL_PORT:8000 --user ${UID}:${GID} --volume ${PWD}:/docs zensical/zensical:$ZENSICAL_VERSION
