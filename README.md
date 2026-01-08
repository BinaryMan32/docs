# BinaryMan32's Documentation

Published at <https://binaryman32.github.io/docs>

Documentation is built as a static site using [zensical][].
The [zensical docker image][zensical-docker] is used by the `preview.sh` and `build.sh` scripts.

[zensical]: https://zensical.org/
[zensical-docker]: https://hub.docker.com/r/zensical/zensical

## Initial Project Setup

This doesn't need to be run again after you clone this project, and is provided only for reference.

```sh
docker run --rm --user ${UID}:${GID} -v ${PWD}:/docs zensical/zensical:0.0.15 new
```

## Local Preview

The command below will start zensical in docker and open the local preview in a browser.

```sh
./preview.sh
```

## Pre-commit

Use `pre-commit` to detect build issues when committing.

```sh
sudo apt install pre-commit
pre-commit install
```

## Browser Screenshots

In Chrome, open a new guest profile window.

Run the following command to resize to `874x576`.

```sh
wmctrl -r :SELECT: -e 0,32,32,874,576
```
