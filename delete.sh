#!/bin/bash
kubectl delete -f ./backend/deployment.yaml
kubectl delete -f ./frontend/deployment.yaml
kubectl delete -f ./loadBalancer/loadBalancer.yaml