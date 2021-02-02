#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 60194ca1d3f4ca82bfecfc9e

echo "stackbit-build.sh: finished build"
