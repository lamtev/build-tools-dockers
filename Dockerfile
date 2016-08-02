FROM ubuntu:xenial

RUN apt-get update && apt-get install -y software-properties-common \
	&& apt-add-repository -y ppa:beineri/opt-qt561-xenial

RUN apt-get update && apt-get install -y \
		cloc=1.60-1.1 \
		cmake=3.5.1-1ubuntu2 \
		cppcheck=1.72-1 \
		g++=4:5.3.1-1ubuntu1 \
		git=1:2.9.2-0ppa1~ubuntu16.04.1 \
		curl=7.47.0-1ubuntu2 \
		lcov=1.12-2 \
		qt56base \
		qt56declarative \
		qt56tools \
		qt56translations \
		valgrind=1:3.11.0-1ubuntu4.1 \
	&& rm -rf /var/lib/apt/lists/*
