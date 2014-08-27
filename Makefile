BRANCH=$(shell git symbolic-ref --short HEAD)
IMAGE=$(shell basename $(shell pwd))

all:
	docker build -t larsks/$(IMAGE):$(BRANCH) .

