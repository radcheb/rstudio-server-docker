#!/bin/sh

IMAGE_NAME=centrstudio
CONTAINER_NAME=centrstudio_instance

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME)
# container don't exist
if [ $? -eq 1 ]; then
	echo "container already killed"
else
	if [ "$RUNNING" == "true" ]; then
		docker stop $CONTAINER_NAME
	fi
	docker rm -f $CONTAINER_NAME
fi

# clean all
if [ "$1" == "all" ]; then
	docker rmi IMAGE_NAME
fi