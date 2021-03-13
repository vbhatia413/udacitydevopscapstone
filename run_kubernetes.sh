#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=vvab13/apitest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run apitest-548b75c49-9c7jj --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/apitest-548b75c49-9c7jj 8000:80
