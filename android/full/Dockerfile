FROM lamtev/java:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV ANDROID_API_LEVELS="android-16,android-17,android-18,android-19,android-21,android-22,android-23,android-24" \
	ANDROID_ARMEABIS="sys-img-armeabi-v7a-android-16,sys-img-armeabi-v7a-android-17,sys-img-armeabi-v7a-android-18,sys-img-armeabi-v7a-android-19,sys-img-armeabi-v7a-android-21,sys-img-armeabi-v7a-android-22,sys-img-armeabi-v7a-android-23" \
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
	&& rm android-sdk_r24.4.1-linux.tgz \
	&& echo y | android update sdk -a -u -t platform-tools,${ANDROID_API_LEVELS},build-tools-24.0.1,${ANDROID_ARMEABIS} \
    	&& chmod a+x -R $ANDROID_HOME \
    	&& chown -R root:root $ANDROID_HOME
	
RUN echo "no" | android create avd \
			--name Nexus_5_API_23 \
			--target android-23 \
			--device "Nexus 5" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_5_API_22 \
			--target android-22 \
			--device "Nexus 5" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_5_API_21 \
			--target android-21 \
			--device "Nexus 5" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_4_API_19 \
			--target android-19 \
			--device "Nexus 4" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_4_API_18 \
			--target android-18 \
			--device "Nexus 4" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Galaxy_Nexus_API_17 \
			--target android-17 \
			--device "Galaxy Nexus" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Galaxy_Nexus_API_16 \
			--target android-16 \
			--device "Galaxy Nexus" \
			--sdcard 256M \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force 
