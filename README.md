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

# LoadBalancer URLs
[Frontend app](http://ae0c1bb956414410b9a1321dc5f6bc87-1681405081.us-east-2.elb.amazonaws.com)

[Backend app](http://a1bd5cde2fbd54f2384642d9162b223c-470616534.us-east-2.elb.amazonaws.com)
