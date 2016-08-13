FROM ubuntu:latest

ENV GRADLE_HOME=/usr/local/gradle-2.14.1 \
    JAVA_HOME=/usr/lib/jvm/default-java

ENV PATH $GRADLE_HOME/bin:$PATH

RUN apt-get update && apt-get install -y \
		default-jdk \
		git \
		unzip \
		wget \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget https://services.gradle.org/distributions/gradle-2.14.1-bin.zip \
	&& unzip -q gradle-2.14.1-bin.zip -d /usr/local \
	&& rm gradle-2.14.1-bin.zip
