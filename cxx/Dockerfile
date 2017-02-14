FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN apt-get update && apt-get install -y \
		cloc \
		cmake \
		cppcheck \
		curl \
		doxygen \
		g++ \
		gcc \
		git \
		lcov \
		libboost-all-dev \
		make \
		python-pip \
		valgrind \
		zip \
	&& rm -rf /var/lib/apt/lists/*
RUN pip install gcovr
