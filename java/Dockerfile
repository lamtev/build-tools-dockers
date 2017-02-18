FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV JAVA_DISTRIBUTION=jdk-8u121-linux-x64.tar.gz \
    JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz \
    JAVA_HOME=/usr/lib/jdk1.8.0_121 \
    GRADLE_DISTRIBUTION=gradle-3.3-bin.zip \
    GRADLE_URL=https://services.gradle.org/distributions/gradle-3.3-bin.zip \
    GRADLE_HOME=/usr/lib/gradle-3.3 \
    MAVEN_DISTRIBUTION=apache-maven-3.3.9-bin.zip \
    MAVEN_URL=http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip \
    MAVEN_HOME=/usr/lib/apache-maven-3.3.9

ENV PATH $PATH:$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin

RUN apt-get update && apt-get install -y \
		cloc \
		curl \
		git \
		jq \
		unzip \
		wget \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" $JAVA_URL \
	&& tar -xvzf $JAVA_DISTRIBUTION -C /usr/lib \
	&& rm $JAVA_DISTRIBUTION \
	&& wget -q $GRADLE_URL \
	&& unzip -q $GRADLE_DISTRIBUTION -d /usr/lib \
	&& rm $GRADLE_DISTRIBUTION \
	&& wget -q $MAVEN_URL \
	&& unzip -q $MAVEN_DISTRIBUTION -d /usr/lib \
	&& rm $MAVEN_DISTRIBUTION
