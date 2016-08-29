#!/usr/bin/env bash

show_image_info()
{
	docker run lamtev/android /bin/bash -c " android list "
}

cd full
docker build -t lamtev/android .
show_image_info
docker rmi -f lamtev/android

cd ../no-emulator
docker build -t lamtev/android .
show_image_info