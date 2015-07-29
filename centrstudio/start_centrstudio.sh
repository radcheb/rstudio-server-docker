#!/bin/sh

IMAGE_NAME=centrstudio
CONTAINER_NAME=centrstudio_instance

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME)

# container don't exist
if [ $? -eq 1 ]; then
	./clean.sh
	docker run --name=$CONTAINER_NAME -d $IMAGE_NAME
	exit 0
fi

if [ "$RUNNING" == "false" ]; then
	docker start $CONTAINER_NAME
else
	echo "container already running"
fi