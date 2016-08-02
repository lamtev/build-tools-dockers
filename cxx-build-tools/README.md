#The cxx-build-tools docker image

##About image

The __cxx-build-tools__ image is based on __ubuntu:latest__ and it contains:

* git
* gcc g++
* cmake
* qt 5.6.1 base, declarative, tools, translations
* openGL
* cloc
* cppcheck
* valgrind
* lcov

##[Dockerfile](https://github.com/lamtev/build-tools-dockers/blob/master/cxx-build-tools/Dockerfile)

##Docker pull command

`docker pull lamtev/cxx-build-tools`
