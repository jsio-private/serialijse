#!/bin/bash
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BIN=$DIR/../node_modules/.bin

$BIN/browserify index.js --standalone serialijse > dist/serialijse.bundle.js
$BIN/uglifyjs dist/serialijse.bundle.js -o dist/serialijse.bundle.min.js
