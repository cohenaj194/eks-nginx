#!/bin/bash
kubectl --kubeconfig ./kubeconfig get svc my-nginx-service

lb_url="$(kubectl --kubeconfig ./kubeconfig get svc my-nginx-service | \
            grep my-nginx-service | \
            awk '{print $4}')"

curl -k $lb_url

echo $lb_url
