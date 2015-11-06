#!/usr/bin/env sh
docker build --no-cache=true -t python-rpm-builder .
mkdir -p dist
docker run -v `pwd`/dist:/rpms python-rpm-builder
