#!/usr/bin/env bash

docker build -t lamtev/java .
docker run lamtev/java /bin/bash -c " java -version && javac -version && gradle -version && mvn -version "
