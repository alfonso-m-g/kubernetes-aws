# Connect to EKS cluster
```
aws eks --region us-east-2 update-kubeconfig --name education-eks-odFrtUsD
```

# Execute interactive shell on deployment
```
kubectl exec --stdin --tty -n g4 deployment/frontend-deployment -- /bin/sh
kubectl exec --stdin --tty -n g4 deployment/backend-deployment -- /bin/sh
kubectl exec --stdin --tty -n g4 deployment/proxy-deployment -- /bin/sh
```

# Generate Node application files
```
cd node_files
npm init -y
npm install express --save
```