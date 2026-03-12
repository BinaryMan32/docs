#!/bin/bash
exec google-chrome --user-data-dir=/tmp/chrome-screenshot-user --no-first-run --guest --new-window --window-size=874,576 $*
