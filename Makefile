NAME=gcloud-kubectl-helm
REGISTRY ?= quay.io
AUTHOR ?= appvia

default: docker

docker:
	@docker build -t ${REGISTRY}/${AUTHOR}/${NAME} .