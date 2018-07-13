DEV_REGISTRY := quay.io/
IMAGE_PREFIX := workato
SHORT_NAME := go-dev-alpine
VERSION := v1

IMAGE := ${DEV_REGISTRY}${IMAGE_PREFIX}/${SHORT_NAME}:${VERSION}

docker-push: docker-build
	docker push ${IMAGE}

docker-build:
	docker build -t ${IMAGE} .

.PHONY: docker-build docker-push
