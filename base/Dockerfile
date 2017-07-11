FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV CLOC_DISTRIBUTION=cloc-1.72.tar.gz \
	CLOC_URL=https://github.com/AlDanial/cloc/releases/download/v1.72/cloc-1.72.tar.gz \
	CLOC_HOME=/usr/lib/cloc-1.72

ENV PATH $PATH:$CLOC_HOME

RUN apt-get update && apt-get install -y \
		curl \
		git \
		unzip \
		wget \
		zip \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget -q $CLOC_URL \
	&& tar -xvzf $CLOC_DISTRIBUTION -C /usr/lib \
	&& rm $CLOC_DISTRIBUTION \
	&& rm -r $CLOC_HOME/tests $CLOC_HOME/LICENSE $CLOC_HOME/README.md
