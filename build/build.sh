#!/bin/bash

# Build the Docker image
docker build -t myapp .

# Login and push to Docker Hub (requires Docker credentials in Jenkins)
docker login -u "$DOCKER_HUB_USER" -p "$DOCKER_HUB_PASSWORD"
docker tag myapp "$DOCKER_HUB_USER/myapp:latest"
docker push "$DOCKER_HUB_USER/myapp:latest"

echo "Docker image pushed to Docker Hub."
