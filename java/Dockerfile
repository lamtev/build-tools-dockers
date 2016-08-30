FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV GRADLE_HOME=/usr/lib/gradle-3.0 \
    JAVA_HOME=/usr/lib/jdk1.8.0_102

ENV PATH $PATH:$GRADLE_HOME/bin:$JAVA_HOME/bin

RUN apt-get update && apt-get install -y \
		git \
		unzip \
		wget \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz \
	&& tar -xvzf jdk-8u102-linux-x64.tar.gz -C /usr/lib \
	&& rm jdk-8u102-linux-x64.tar.gz \
	&& wget https://services.gradle.org/distributions/gradle-3.0-bin.zip \
	&& unzip -q gradle-3.0-bin.zip -d /usr/lib \
	&& rm gradle-3.0-bin.zip
