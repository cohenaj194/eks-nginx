#!/bin/bash

# cleanup
kubectl --kubeconfig ./kubeconfig delete service my-nginx-service
kubectl --kubeconfig ./kubeconfig delete -f ./run-my-nginx.yaml 
