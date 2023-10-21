#!/bin/bash
sudo apt-get update

sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials privatecluster --region us-east1 --project swift-radar-399606

# Install Docker
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# git clone https://github.com/Mostafaa-Elkhouly/Google-Cloud-ITI-Project.git
# docker build -t node-app:v1 .
# docker tag node-app:latest us-central1-docker.pkg.dev/swift-radar-399606/my-repo/node-app:v1
# gcloud auth configure-docker us-central1-docker.pkg.dev
# docker push us-central1-docker.pkg.dev/swift-radar-399606/my-repo/node-app:v1