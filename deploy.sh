#!/bin/bash

# create the cluster
eksctl create cluster -f cluster.yaml --kubeconfig kubeconfig

# add the nginx containers
kubectl --kubeconfig ./kubeconfig apply -f ./run-my-nginx.yaml 

# expose the nginx containers
kubectl --kubeconfig ./kubeconfig expose deployment/my-nginx \
        --port=80 --target-port=80 \
        --name=my-nginx-service --type=LoadBalancer

