IMAGE_NAME = wasabina67/cd-echo-img
IMAGE_TAG = latest
CONTAINER_NAME = cd-echo-ctr

BUILD = docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
RUN = docker run -it --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash

build:
	$(BUILD)
run:
	$(RUN)
