#!/bin/sh
set -eu
PROJECT_NAME="docker-go-base"
IMAGE_TAG="$(git rev-parse HEAD)"
docker_push() {
    docker push chrisjoyce911/go-base:tagname

    local image="registry.dev.benon.com:5000/jumbo/$PROJECT_NAME"
    echo "Pushing $image:$IMAGE_TAG"
    docker push "$image:$IMAGE_TAG"
}
docker_push
