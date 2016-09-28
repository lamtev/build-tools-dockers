FROM lamtev/android:no-emulator

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

ENV ANDROID_ARMEABIS="sys-img-armeabi-v7a-android-23"

RUN echo y | android update sdk -t ${ANDROID_ARMEABIS}

RUN echo "no" | android create avd \
			--name Nexus_5_API_23 \
			--target android-23 \
			--device "Nexus 5" \
			--skin WVGA800 \
			--abi armeabi-v7a \
			--force 
