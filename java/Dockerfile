FROM lamtev/base:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV JAVA_DISTRIBUTION=jdk-12_linux-x64_bin.tar.gz \
    JAVA_URL=https://download.oracle.com/otn-pub/java/jdk/12+33/312335d836a34c7c8bba9d963e26dc23/jdk-12_linux-x64_bin.tar.gz \
    JAVA_HOME=/usr/lib/jdk-12 \
    GRADLE_DISTRIBUTION=gradle-5.3.1-bin.zip \
    GRADLE_URL=https://services.gradle.org/distributions/gradle-5.3.1-bin.zip \
    GRADLE_HOME=/usr/lib/gradle-5.3.1 \
    MAVEN_DISTRIBUTION=apache-maven-3.6.0-bin.zip \
    MAVEN_URL=https://www-eu.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.zip \
    MAVEN_HOME=/usr/lib/apache-maven-3.6.0

ENV PATH $PATH:$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin

RUN apt-get update && apt-get install -y \
		jq \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" $JAVA_URL \
	&& tar -xvzf $JAVA_DISTRIBUTION -C /usr/lib \
	&& rm $JAVA_DISTRIBUTION \
	&& wget -q $GRADLE_URL \
	&& unzip -q $GRADLE_DISTRIBUTION -d /usr/lib \
	&& rm $GRADLE_DISTRIBUTION \
	&& wget -q $MAVEN_URL \
	&& unzip -q $MAVEN_DISTRIBUTION -d /usr/lib \
	&& rm $MAVEN_DISTRIBUTION
