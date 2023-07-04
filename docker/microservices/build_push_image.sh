#!/bin/bash

# Build the Docker image from the Dockerfile with the name "item-app" and tag it as "v1"
docker build -t ghcr.io/s-toe/item-app:v1 .

# View the list of local images
docker images

# Rename the image to match the format for GitHub Packages (GitHub Container Registry)
docker tag ghcr.io/s-toe/item-app:v1 ghcr.io/s-toe/item-app:v1

# Login to GitHub Packages (GitHub Container Registry) via Terminal
docker login ghcr.io

# Push the image to GitHub Packages (GitHub Container Registry)
docker push ghcr.io/s-toe/item-app:v1