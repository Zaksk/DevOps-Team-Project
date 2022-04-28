#!/bin/bash
sudo kubectl apply -f K8/backend.yaml --context emoluster
sudo kubectl apply -f K8/frontend.yaml --context emoluster