#!/bin/bash

# cleanup
kubectl delete service my-nginx-service
kubectl delete -f ./run-my-nginx.yaml 
