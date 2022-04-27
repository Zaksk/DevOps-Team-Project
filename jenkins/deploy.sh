#!/bin/bash
kubectl apply -f nginx.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml