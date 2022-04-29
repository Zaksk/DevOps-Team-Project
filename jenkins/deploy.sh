#!/bin/bash
kubectl apply -f K8/backend.yaml --context emoluster
kubectl apply -f K8/frontend.yaml --context emoluster