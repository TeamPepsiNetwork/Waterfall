#!/usr/bin/env bash

git submodule update --init && ./scripts/applyPatches.sh

if [ "$1" == "--jar" ]; then
     mvn package -Dmaven.test.skip=true
fi
