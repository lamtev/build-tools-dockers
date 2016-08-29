#!/usr/bin/env bash

docker build -t lamtev/qt .
docker run lamtev/qt /bin/bash -c " qmake --version "