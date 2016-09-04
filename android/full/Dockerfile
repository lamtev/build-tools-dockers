FROM lamtev/android:no-emulator

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV ANDROID_API_LEVELS="android-16,android-17,android-18,android-19,android-21,android-22,android-23,android-24" \
	ANDROID_ARMEABIS="sys-img-armeabi-v7a-android-16,sys-img-armeabi-v7a-android-17,sys-img-armeabi-v7a-android-18,sys-img-armeabi-v7a-android-19,sys-img-armeabi-v7a-android-21,sys-img-armeabi-v7a-android-22,sys-img-armeabi-v7a-android-23"
	
RUN echo "no" | android create avd \
			--name Nexus_5_API_23 \
			--target android-23 \
			--device "Nexus 5" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_5_API_22 \
			--target android-22 \
			--device "Nexus 5" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_5_API_21 \
			--target android-21 \
			--device "Nexus 5" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_4_API_19 \
			--target android-19 \
			--device "Nexus 4" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Nexus_4_API_18 \
			--target android-18 \
			--device "Nexus 4" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Galaxy_Nexus_API_17 \
			--target android-17 \
			--device "Galaxy Nexus" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force \
	&& echo "no" | android create avd \
			--name Galaxy_Nexus_API_16 \
			--target android-16 \
			--device "Galaxy Nexus" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force 
