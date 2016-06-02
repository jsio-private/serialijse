#!/bin/bash
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BIN=$DIR/../node_modules/.bin

$BIN/mocha -R spec
$BIN/mocha-phantomjs -R spec test_html/demo.html
