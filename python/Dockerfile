FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV PATH $PATH:/opt/anaconda/bin/

RUN apt-get update && apt-get install -y \
		build-essential \
		checkinstall \
		cloc \
		curl \
		git \
		libbz2-dev \
		libc6-dev \
		libgdbm-dev \
		libncursesw5-dev \
		libreadline-gplv2-dev \
		libssl-dev \
		libsqlite3-dev \
		python-pip \
		tk-dev \
		unzip \
		wget \
		xz-utils \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz \
	&& tar xvf Python-3.6.1.tar.xz \
	&& cd Python-3.6.1 \
	&& ./configure \
	&& make altinstall \
	&& cd .. && rm Python-3.6.1.tar.xz
	
ADD https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh conda.sh

RUN chmod +x conda.sh
RUN ./conda.sh -b -p /opt/anaconda
RUN rm conda.sh
RUN /opt/anaconda/bin/conda install -q -y numpy scipy matplotlib jupyter
