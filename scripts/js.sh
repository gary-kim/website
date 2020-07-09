#!/usr/bin/env bash

set -euf -o pipefail

# This line will only work in scripts and not sourced bash scripts.
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p $SCRIPTPATH/../static/js/dist

cp $SCRIPTPATH/../node_modules/viewerjs/dist/viewer.min.css $SCRIPTPATH/../static/js/dist/viewer.min.css
cp $SCRIPTPATH/../node_modules/viewerjs/dist/viewer.min.js $SCRIPTPATH/../static/js/dist/viewer.min.js
