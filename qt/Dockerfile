FROM lamtev/cxx:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN apt-get update && apt-get install -y software-properties-common \
	&& apt-add-repository -y ppa:beineri/opt-qt57-xenial

RUN apt-get update && apt-get install -y \
		libgl1-mesa-dev \
		qt57base \
		qt57declarative \
		qt57tools \
		qt57translations \
	&& rm -rf /var/lib/apt/lists/*

ENV PATH /opt/qt57/bin:$PATH
