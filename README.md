# BinaryMan32's Documentation

Published at <https://binaryman32.github.io/docs>

Documentation is built as a static site using [mkdocs][] and the [material][mkdocs-material] theme.
If you want to do something that it doesn't support, check the [mkdocs catalog][mkdocs-catalog] for plugins.

[mkdocs]: https://www.mkdocs.org/
[mkdocs-material]: https://squidfunk.github.io/mkdocs-material
[mkdocs-catalog]: https://github.com/mkdocs/catalog

## Local Preview with Virtualenv

Create virtualenv:

```sh
python3 -m venv .venv/ && source .venv/bin/activate && pip3 install -r requirements.txt
```

Preview:

```sh
mkdocs serve --livereload
```

## Local Preview with Docker

```sh
./preview-docker.sh
```

## Pre-commit

Use `pre-commit` to find broken links before committing.

```sh
sudo apt install pre-commit
pre-commit install
```
