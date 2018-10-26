FROM lamtev/base:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV JAVA_DISTRIBUTION=jdk-11.0.1_linux-x64_bin.tar.gz \
    JAVA_URL=http://download.oracle.com/otn-pub/java/jdk/11.0.1+13/90cf5d8f270a4347a95050320eef3fb7/jdk-11.0.1_linux-x64_bin.tar.gz \
    JAVA_HOME=/usr/lib/jdk-11.0.1 \
    GRADLE_DISTRIBUTION=gradle-4.10.2-bin.zip \
    GRADLE_URL=https://services.gradle.org/distributions/gradle-4.10.2-bin.zip \
    GRADLE_HOME=/usr/lib/gradle-4.10.2 \
    MAVEN_DISTRIBUTION=apache-maven-3.5.4-bin.zip \
    MAVEN_URL=https://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip \
    MAVEN_HOME=/usr/lib/apache-maven-3.5.4

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
