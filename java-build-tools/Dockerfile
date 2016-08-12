FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
		default-jdk \
		wget \
		unzip \
		git \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget https://services.gradle.org/distributions/gradle-2.14.1-bin.zip \
	&& unzip -q gradle-2.14.1-bin.zip -d /usr/local \
	&& export GRADLE_HOME=/usr/local/gradle-2.14.1 \
	&& export PATH=$PATH:$GRADLE_HOME/bin