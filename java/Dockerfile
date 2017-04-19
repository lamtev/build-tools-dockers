FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV JAVA_DISTRIBUTION=jdk-8u131-linux-x64.tar.gz \
    JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz \
    JAVA_HOME=/usr/lib/jdk1.8.0_131 \
    GRADLE_DISTRIBUTION=gradle-3.5-bin.zip \
    GRADLE_URL=https://services.gradle.org/distributions/gradle-3.5-bin.zip \
    GRADLE_HOME=/usr/lib/gradle-3.5 \
    MAVEN_DISTRIBUTION=apache-maven-3.5.0-bin.zip \
    MAVEN_URL=http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip \
    MAVEN_HOME=/usr/lib/apache-maven-3.5.0

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
