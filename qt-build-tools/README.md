#The qt-build-tools docker image

##About image

The __qt-build-tools__ image is based on __lamtev/cxx-build-tools:latest__ and it contains:

* boost
* cloc
* cmake
* cppcheck
* doxygen
* gcc, g++
* git
* lcov
* openGL
* qt 5.6.1 base, declarative, tools, translations
* valgrind

##[Dockerfile](https://github.com/lamtev/build-tools-dockers/blob/master/qt-build-tools/Dockerfile)

##Docker pull command

`docker pull lamtev/qt-build-tools`