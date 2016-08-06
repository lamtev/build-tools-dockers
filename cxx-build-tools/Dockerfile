FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
		cloc \
		cmake \
		cppcheck \
		curl \
		doxygen \
		g++ \
		git \
		lcov \
		libboost-all-dev \
		python-pip \
		valgrind \
		zip \
	&& rm -rf /var/lib/apt/lists/*
RUN pip install gcovr
