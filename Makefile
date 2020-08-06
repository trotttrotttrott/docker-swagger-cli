IMAGE=trotttrotttrott/swagger-cli
TAG=4.0.4

build:
	docker build -t ${IMAGE}:${TAG} \
		--build-arg VERSION=${TAG} .
	docker tag ${IMAGE}:${TAG} ${IMAGE}:latest

push:
	docker push ${IMAGE}:${TAG}
	docker push ${IMAGE}:latest

.PHONY: build push
