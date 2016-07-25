#build-tools docker image

##About image

__The build-tools image is based on ubuntu:xenial and it contains:__
* git 2.7.4
* gcc g++ 5.4.0
* cmake 3.5.1
* qt 5.6.1 base, declarative, tools, translations
* cloc 1.60
* cppcheck 1.72
* valgrind 3.11.0
* lcov 1.12

[Dockerfile](https://github.com/lamtev/docker_build-tools/blob/master/Dockerfile)

##Docker pull command

`docker pull lamtev/build-tools`
