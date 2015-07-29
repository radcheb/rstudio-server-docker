#!/bin/sh

IMAGE_NAME=centocker
CONTAINER_NAME=centocker_instance_1

docker stop $CONTAINER_NAME

docker rm CONTAINER_NAME

docker run -name=$CONTAINER_NAME  -d $IMAGE_NAME

docker exec -it $CONTAINER_NAME bash