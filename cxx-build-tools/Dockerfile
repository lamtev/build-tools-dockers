FROM ubuntu:latest

RUN apt-get update && apt-get install -y software-properties-common \
	&& apt-add-repository -y ppa:beineri/opt-qt561-xenial

RUN apt-get update && apt-get install -y \
		cloc \
		cmake \
		cppcheck \
		g++ \
		git \
		curl \
		lcov \
		libgl1-mesa-dev \
		qt56base \
		qt56declarative \
		qt56tools \
		qt56translations \
		valgrind \
		zip \
	&& rm -rf /var/lib/apt/lists/*

ENV PATH /opt/qt56/bin:$PATH