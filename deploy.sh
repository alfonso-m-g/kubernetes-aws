#!/bin/bash
kubectl apply -f ./backend/deployment.yaml
kubectl apply -f ./backend/service.yaml
BACKEND_POD_NAME=$(kubectl get pods --no-headers -n g4 -o custom-columns=":metadata.name" | grep backend)
kubectl cp ./node_files/. g4/$BACKEND_POD_NAME:./
kubectl exec -it -n g4 deployment/backend-deployment -- /bin/sh -c "npm install -g forever && forever start index.js"
kubectl exec -it -n g4 deployment/backend-deployment -- /bin/sh -c "curl http://localhost:5000"

kubectl apply -f ./frontend/deployment.yaml
kubectl apply -f ./frontend/service.yaml
FRONTEND_POD_NAME=$(kubectl get pods --no-headers -n g4 -o custom-columns=":metadata.name" | grep frontend)
kubectl cp ./frontend_files/index.html g4/$FRONTEND_POD_NAME:./usr/share/nginx/html/index.html

kubectl apply -f ./proxy/deployment.yaml
kubectl apply -f ./proxy/service.yaml
PROXY_POD_NAME=$(kubectl get pods --no-headers -n g4 -o custom-columns=":metadata.name" | grep proxy)
kubectl cp ./proxy_files/default.conf g4/$PROXY_POD_NAME:./etc/nginx/conf.d/default.conf

# kubectl apply -f ./loadBalancer/loadBalancer.yaml