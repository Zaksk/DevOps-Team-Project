#!/bin/bash
aws eks --region eu-west-2 update-kubeconfig --name emoluster
kubectl apply -f K8/backend.yaml
kubectl apply -f K8/frontend.yaml