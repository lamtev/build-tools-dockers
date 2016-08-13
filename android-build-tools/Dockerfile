FROM lamtev/java-build-tools

RUN dpkg --add-architecture i386 \
	&& apt-get update && apt-get install -y \
		libncurses5:i386 \
		libstdc++6:i386 \
		zlib1g:i386 \
	&& rm -rf /var/lib/apt/lists/*
	
ENV ANDROID_API_LEVELS="android-16,android-17,android-18,android-19,android-20,android-21,android-22,android-23,android-24" \
	ANDROID_HOME=/usr/local/android-sdk-linux \
	PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/24.0.1 \
	DEVICE_NAME="Nexus 5" \
	EXTERNAL_STORAGE=256m
	
RUN wget https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz \
	&& tar -xvzf android-sdk_r24.4.1-linux.tgz -C /usr/local \
	&& echo y | android update sdk -a -u -t platform-tools,${ANDROID_API_LEVELS},build-tools-24.0.1 \
    && chmod a+x -R $ANDROID_HOME \
    && chown -R root:root $ANDROID_HOME
	
RUN   echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 24" \
					--device $DEVICE_NAME \
					--target android-24 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 23" \
					--device $DEVICE_NAME \
					--target android-23 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 22" \
					--device $DEVICE_NAME \
					--target android-22 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 21" \
					--device $DEVICE_NAME \
					--target android-21 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 20" \
					--device $DEVICE_NAME \
					--target android-20 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 19" \
					--device $DEVICE_NAME \
					--target android-19 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 18" \
					--device $DEVICE_NAME \
					--target android-18 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 17" \
					--device $DEVICE_NAME \
					--target android-17 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \
	&& echo "no" | android create avd \
					--force \
					--name "Nexus 5 API 16" \
					--device $DEVICE_NAME \
					--target android-17 \
					--abi armeabi-v7a \
					--skin WVGA800 \
					--sdcard $EXTERNAL_STORAGE \