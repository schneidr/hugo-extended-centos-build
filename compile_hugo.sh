#!/bin/env bash

PATH=$PATH:/usr/local/go/bin/
CGO_ENABLED=1

if [ -z "${HUGO_VERSION}" ];
then
    echo "Hugo version missing"
    echo "Example usage:"
    echo "docker run -it --rm -v \$PWD:/work -e HUGO_VERSION=0.105.0 hugo-build-centos:latest"
    exit 1
fi

wget https://github.com/gohugoio/hugo/archive/refs/tags/v${HUGO_VERSION}.zip
unzip v${HUGO_VERSION}.zip
cd hugo-${HUGO_VERSION}
go build --tags extended && cp hugo ..
cd ..
rm -rf hugo-${HUGO_VERSION} v${HUGO_VERSION}.zip
