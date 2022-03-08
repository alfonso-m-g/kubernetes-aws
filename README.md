# Connect to EKS cluster
```
aws eks --region us-east-2 update-kubeconfig --name education-eks-odFrtUsD
```

# Execute interactive shell on pod
```
kubectl exec --stdin --tty -n g4 frontend-deployment-6fff6b744-cnktq -- /bin/sh
```