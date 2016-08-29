#!/usr/bin/env bash

cd extra
docker build -t lamtev/latex .
docker rmi -f lamtev/latex

cd ../full
docker build -t lamtev/latex .