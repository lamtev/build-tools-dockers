FROM lamtev/cxx:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN apt-get update && apt-get install -y software-properties-common \
	&& apt-add-repository -y ppa:beineri/opt-qt561-xenial

RUN apt-get update && apt-get install -y \
		libgl1-mesa-dev \
		qt56base \
		qt56declarative \
		qt56tools \
		qt56translations \
	&& rm -rf /var/lib/apt/lists/*

ENV PATH /opt/qt56/bin:$PATH