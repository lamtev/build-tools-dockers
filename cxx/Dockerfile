FROM lamtev/base:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV DOXYGEN_HOME=/usr/lib/doxygen-1.8.13

ENV PATH $PATH:$DOXYGEN_HOME/bin

RUN apt-get update && apt-get install -y \
		cmake \
		cppcheck \
		g++ \
		gcc \
		lcov \
		libboost-all-dev \
		make \
		python-pip \
		valgrind \
	&& rm -rf /var/lib/apt/lists/*
	
RUN pip install gcovr \
	&& wget http://ftp.stack.nl/pub/users/dimitri/doxygen-1.8.13.linux.bin.tar.gz \
	&& tar -xvzf doxygen-1.8.13.linux.bin.tar.gz -C /usr/lib \
	&& rm doxygen-1.8.13.linux.bin.tar.gz
