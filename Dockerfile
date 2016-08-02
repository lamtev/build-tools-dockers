FROM ubuntu:xenial

RUN apt-get update && apt-get install -y software-properties-common \
	&& apt-add-repository -y ppa:beineri/opt-qt561-xenial

RUN apt-get update && apt-get install -y \
		cloc \
		cmake \
		cppcheck \
		curl \
		g++ \
		git \
		lcov \
		qt56base \
		qt56declarative \
		qt56tools \
		qt56translations \
		valgrind \
	&& rm -rf /var/lib/apt/lists/*
