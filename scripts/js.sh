#!/usr/bin/env bash

set -euf -o pipefail

# This line will only work in scripts and not sourced bash scripts.
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p $SCRIPTPATH/../static/js/dist

# viewer.js
cp $SCRIPTPATH/../node_modules/viewerjs/dist/viewer.min.css $SCRIPTPATH/../static/js/dist/viewer.min.css
cp $SCRIPTPATH/../node_modules/viewerjs/dist/viewer.min.js $SCRIPTPATH/../static/js/dist/viewer.min.js

# reveal.js
mkdir -p $SCRIPTPATH/../static/js/dist/reveal.js/plugins/markdown
cp $SCRIPTPATH/../node_modules/reveal.js/plugin/markdown/markdown.js $SCRIPTPATH/../static/js/dist/reveal.js/plugins/markdown/markdown.js

mkdir -p $SCRIPTPATH/../static/js/dist/reveal.js/plugins/highlight
cp $SCRIPTPATH/../node_modules/reveal.js/plugin/highlight/highlight.js $SCRIPTPATH/../static/js/dist/reveal.js/plugins/highlight/highlight.js

cp -r $SCRIPTPATH/../node_modules/reveal.js/dist $SCRIPTPATH/../static/js/dist/reveal.js/dist

