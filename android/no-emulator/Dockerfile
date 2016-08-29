FROM lamtev/java:latest

ENV ANDROID_API_LEVELS="android-24" \
	ANDROID_HOME=/usr/lib/android-sdk-linux
	
ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/24.0.1

RUN dpkg --add-architecture i386 \
	&& apt-get update && apt-get install -y \
		libncurses5:i386 \
		libstdc++6:i386 \
		zlib1g:i386 \
	&& rm -rf /var/lib/apt/lists/*
	
RUN wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz \
	&& tar -xvzf android-sdk_r24.4.1-linux.tgz -C /usr/lib \
	&& echo y | android update sdk -a -u -t platform-tools,${ANDROID_API_LEVELS},build-tools-24.0.1 \
    	&& chmod a+x -R $ANDROID_HOME \
    	&& chown -R root:root $ANDROID_HOME
	