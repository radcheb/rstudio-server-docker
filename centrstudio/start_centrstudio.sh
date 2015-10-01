#!/bin/bash -xe

IMAGE_NAME=centrstudio
CONTAINER_NAME=centrstudio_instance

RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME || echo "none") 

# container don't exist
if [ "$RUNNING" == "none" ]; then
	./clean_centrstudio.sh
	docker run -p 8787:8787 --name=$CONTAINER_NAME -v /data/rstudio-users-data:/home -v /data/rstudio-shared-data:/data -d $IMAGE_NAME
	exit 0
elif [ "$RUNNING" == "false" ]; then
	docker start $CONTAINER_NAME
else
	echo "container already running"
fi