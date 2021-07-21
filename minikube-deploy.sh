#!/bin/bash

# create the cluster
minikube start

# add the nginx containers
kubectl apply -f ./run-my-nginx.yaml 

# expose the nginx containers
kubectl expose deployment/my-nginx \
        --port=80 --target-port=80 \
        --name=my-nginx-service --type=LoadBalancer

