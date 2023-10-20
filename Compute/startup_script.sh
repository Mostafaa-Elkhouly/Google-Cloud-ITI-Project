#!/bin/bash
sudo apt-get update
sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials privatecluster --region us-east1 --project swift-radar-399606