#The build-tools docker image [![Build Status](https://travis-ci.org/lamtev/docker_build-tools.svg?branch=master)](https://travis-ci.org/lamtev/docker_build-tools)

##About image

The __build-tools__ image is based on __ubuntu:latest__ and it contains:
* git
* gcc g++
* cmake
* qt 5.6.1 base, declarative, tools, translations
* cloc
* cppcheck
* valgrind
* lcov

##[Dockerfile](https://github.com/lamtev/docker_build-tools/blob/master/Dockerfile)

##Docker pull command

`docker pull lamtev/build-tools`
