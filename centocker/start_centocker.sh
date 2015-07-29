#!/bin/sh

IMAGE_NAME=centocker
CONTAINER_NAME=centocker_instance_1

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME)

# container don't exist
if [ $? -eq 1 ]; then
	./clean.sh
	docker run --name=$CONTAINER_NAME -i -t $IMAGE_NAME 
	exit 0
fi

if [ "$RUNNING" == "false" ]; then
	docker start $CONTAINER_NAME
else
	echo "container already running"
fi
docker exec -it $CONTAINER_NAME bash