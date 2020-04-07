#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath="ksleeq21/ml-us-k8"

# Run the Docker Hub container with kubernetes
kubectl run project-ml-microservice-k8 --generator=run-pod/v1 --image="$dockerpath:latest" --port=80 --labels app=project-ml-microservice-k8

# List kubernetes pods
kubectl get pods/project-ml-microservice-k8

# Forward the container port to a host
kubectl port-forward project-ml-microservice-k8 8000:80