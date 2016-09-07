FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV GRADLE_DISTRIBUTION="gradle-2.14.1-bin.zip" \
    GRADLE_HOME=/usr/lib/gradle-2.14.1 \
    JAVA_DISTRIBUTION="jdk-8u102-linux-x64.tar.gz" \
    JAVA_HOME=/usr/lib/jdk1.8.0_102 

ENV PATH $PATH:$GRADLE_HOME/bin:$JAVA_HOME/bin

RUN apt-get update && apt-get install -y \
		git \
		unzip \
		wget \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/${JAVA_DISTRIBUTION} \
	&& tar -xvzf $JAVA_DISTRIBUTION -C /usr/lib \
	&& rm $JAVA_DISTRIBUTION \
	&& wget https://services.gradle.org/distributions/${GRADLE_DISTRIBUTION} \
	&& unzip -q $GRADLE_DISTRIBUTION -d /usr/lib \
	&& rm $GRADLE_DISTRIBUTION
