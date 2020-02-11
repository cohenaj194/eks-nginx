#!/bin/bash

# show cluster
kubectl --kubeconfig ./kubeconfig get nodes 
# show its empty
kubectl --kubeconfig ./kubeconfig get pods -o wide
