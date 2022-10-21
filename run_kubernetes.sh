#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
 dockerpath=kapildockerlogin/udacity-project4-microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project4-microservices --image=$dockerpath --port=80 --labels app=udacityproject4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host.
kubectl port-forward udacity-project4-microservices 8000:80