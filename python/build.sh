#!/usr/bin/env bash

docker build -t lamtev/python .
docker run lamtev/python /bin/bash -c " python --version && python3.6 --version && pip --version && conda --version && conda list"
