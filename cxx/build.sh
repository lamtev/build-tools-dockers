#!/usr/bin/env bash

docker build -t lamtev/cxx .
docker run lamtev/cxx /bin/bash -c " gcc --version && g++ --version && cloc --version && cppcheck --version && valgrind --version && cmake --version "