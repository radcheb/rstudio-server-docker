#!/bin/sh

IMAGE_NAME=centocker
CONTAINER_NAME=centocker_instance_1

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME)

# container don't exist
if [ $? -eq 1 ]; then
	docker run -name=$CONTAINER_NAME -t $IMAGE_NAME bash
	exit 0
fi

if [ "$RUNNING" == "false" ]; then
	docker exec -it $CONTAINER_NAME bash
else
	echo "container already running"
fi