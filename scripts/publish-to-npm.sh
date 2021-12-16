#!/bin/bash
VERSION=$(jq -r '.version' package.json)
BUILD_DATE=$(date +'%Y-%m-%d')
BUILD_HASH=$(git rev-parse --short HEAD)
BUILD_VERSION=${BUILD_DATE}-${BUILD_HASH}

npm --no-git-tag-version version "$VERSION-$BUILD_VERSION"
npm publish --access public
