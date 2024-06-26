# Verify gke-gcloud-auth-plugin Installation (if not installed, install it)
gke-gcloud-auth-plugin --version 

# Install Kubectl authentication plugin for GKE
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin

# Verify gke-gcloud-auth-plugin Installation
gke-gcloud-auth-plugin --version 

# Configure kubeconfig for kubectl
gcloud container clusters get-credentials <CLUSTER-NAME> --region <REGION> --project <PROJECT-NAME>
gcloud container clusters get-credentials standard-public-cluster-1 --region us-central1 --project kdaida123

# Run kubectl with the new plugin prior to the release of v1.25
vi ~/.bashrc
USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Reload the environment value
source ~/.bashrc

# Check if Environment variable loaded in Terminal
echo $USE_GKE_GCLOUD_AUTH_PLUGIN

# Verify kubectl version
kubectl version --short

# Install kubectl (if not installed)
gcloud components install kubectl

# Configure kubectl
gcloud container clusters get-credentials <CLUSTER-NAME> --zone <ZONE> --project <PROJECT-ID>
gcloud container clusters get-credentials standard-cluster-1 --zone us-central1-c --project kdaida123

# Verify Kubernetes Worker Nodes
kubectl get nodes

Step-06: Review Sample Application: 01-kubernetes-deployment.yaml
Folder: kube-manifests
apiVersion: apps/v1
kind: Deployment 
metadata: #Dictionary
  name: myapp1-deployment
spec: # Dictionary
  replicas: 2
  selector:
    matchLabels:
      app: myapp1
  template:  
    metadata: # Dictionary
      name: myapp1-pod
      labels: # Dictionary
        app: myapp1  # Key value pairs
    spec:
      containers: # List
        - name: myapp1-container
          image: stacksimplify/kubenginx:1.0.0
          ports: 
            - containerPort: 80  
    
# Verify System Pod in kube-system Namespace
kubectl -n kube-system get pods

# Verify kubeconfig file
cat $HOME/.kube/config
kubectl config view
