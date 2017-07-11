#!/usr/bin/env bash

docker build -t lamtev/base .
docker run lamtev/base /bin/bash -c " echo 'cloc version:' && cloc --version && wget --version && curl --version && git version "
