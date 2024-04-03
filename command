Step-08: Upload Sample App to Google CloudShell
# Upload Sample App to Google CloudShell
Go to Google CloudShell -> 3 Dots -> Upload -> Folder -> google-kubernetes-engine

# Change Directory
cd google-kubernetes-engine/02-Create-GKE-Cluster

# Verify folder uploaded
ls kube-manifests/

# Verify Files
cat kube-manifests/01-kubernetes-deployment.yaml
cat kube-manifests/02-kubernetes-loadbalancer-service.yaml
Step-09: Deploy Sample Application and Verify
# Change Directory
cd google-kubernetes-engine/02-Create-GKE-Cluster

# Deploy Sample App using kubectl
kubectl apply -f kube-manifests/

# List Deployments
kubectl get deploy

# List Pods
kubectl get pod

# List Services
kubectl get svc

# Access Sample Application
http://<EXTERNAL-IP>
Step-10: Verify Workloads in GKE Dashboard
Go to GCP Console -> Kubernetes Engine -> Workloads
Click on myapp1-deployment
Review all tabs
Step-11: Verify Services in GKE Dashboard
Go to GCP Console -> Kubernetes Engine -> Services & Ingress
Click on myapp1-lb-service
Review all tabs
Step-13: Verify Load Balancer
Go to GCP Console -> Networking Services -> Load Balancing
Review all tabs
Step-14: Clean-Up
Go to Google Cloud Shell
# Change Directory
cd google-kubernetes-engine/02-Create-GKE-Cluster

# Delete Kubernetes Deployment and Service
kubectl delete -f kube-manifests/

# List Deployments
kubectl get deploy

# List Pods
kubectl get pod

# List Services
kubectl get svc
