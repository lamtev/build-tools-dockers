FROM lamtev/base:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV JAVA_DISTRIBUTION=jdk-8u141-linux-x64.tar.gz \
    JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.tar.gz \
    JAVA_HOME=/usr/lib/jdk1.8.0_141 \
    GRADLE_DISTRIBUTION=gradle-4.0.1-bin.zip \
    GRADLE_URL=https://services.gradle.org/distributions/gradle-4.0.1-bin.zip \
    GRADLE_HOME=/usr/lib/gradle-4.0.1 \
    MAVEN_DISTRIBUTION=apache-maven-3.5.0-bin.zip \
    MAVEN_URL=http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip \
    MAVEN_HOME=/usr/lib/apache-maven-3.5.0

ENV PATH $PATH:$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin

RUN apt-get update && apt-get install -y \
		jq \
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
