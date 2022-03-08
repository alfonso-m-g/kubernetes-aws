#!/bin/bash
kubectl apply -f ./backend/deployment.yaml
kubectl apply -f ./frontend/deployment.yaml
kubectl apply -f ./loadBalancer/loadBalancer.yaml