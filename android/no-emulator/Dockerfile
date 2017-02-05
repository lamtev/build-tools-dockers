FROM lamtev/java:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV ANDROID_API_LEVELS="android-24,android-25" \
	ANDROID_HOME=/usr/lib/android-sdk-linux
	
ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/25.0.1

RUN dpkg --add-architecture i386 \
	&& apt-get update && apt-get install -y \
		libncurses5:i386 \
		libstdc++6:i386 \
		zlib1g:i386 \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget -q https://dl.google.com/android/repository/tools_r25.2.3-linux.zip \
	&& mkdir /usr/lib/android-sdk-linux \
	&& unzip -q tools_r25.2.3-linux.zip -d /usr/lib/android-sdk-linux \
	&& rm tools_r25.2.3-linux.zip \
	&& echo y | android update sdk -a -u -t platform-tools,${ANDROID_API_LEVELS},build-tools-25.0.1,extra-android-m2repository \
    	&& chmod a+x -R $ANDROID_HOME \
    	&& chown -R root:root $ANDROID_HOME
	
