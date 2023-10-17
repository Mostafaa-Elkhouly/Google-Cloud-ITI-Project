# GCP ITI Project

This project is designed to assess your Google Cloud Platform (GCP) skills, including expertise in Networking, Databases, Development, Terraform, Docker, and Kubernetes. In this project, you will deploy a simple stateless Node.js web application that interacts with a highly available MongoDB, which is replicated across three zones and consists of one primary and two secondaries.

## Project Overview

1. **Infrastructure Setup**
   - Develop and utilize your own Terraform modules to create the necessary infrastructure on GCP, including the following components:
     a. IAM: Create two service accounts with appropriate roles.
     b. Network: Establish one Virtual Private Cloud (VPC) with two subnets, configure firewall rules as needed, and set up one NAT gateway.
     c. Compute: Deploy one private Virtual Machine (VM) and create one Google Kubernetes Engine (GKE) standard cluster spanning across three zones.
     d. Storage: Set up an Artifact Registry repository to store container images.

2. **MongoDB Deployment**
   - Deploy a MongoDB replica set across the three zones, ensuring high availability and replication.

3. **Application Containerization and Deployment**
   - Dockerize the Node.js web application, ensuring it can connect to the three MongoDB replicas.

4. **Exposing the Web Application**
   - Expose the web application using an ingress controller or a load balancer for high availability and load distribution.

5. **Identity-Aware Proxy (IAP) Integration**
   - Enable Identity-Aware Proxy on the load balancer to restrict access to the web application, allowing traffic only from authorized users.

## Project Notes

1. Only the management VM (private) will have access to the internet through the NAT gateway, ensuring a secure network configuration.

2. The GKE cluster (private) should not have direct internet access for enhanced security.

3. The VM will be used for managing the cluster and building/pushing container images to the Artifact Registry.

4. All deployed container images must be stored in the Artifact Registry for version control and ease of deployment.

5. Avoid using default service accounts and basic roles; prefer predefined roles as needed for fine-grained access control.

6. Implement strict security measures to avoid unnecessary open ports and permissions, ensuring a robust and secure deployment.

## Getting Started

To get started with this project, follow these steps:

1. Clone this repository to your local environment.
2. Install the necessary dependencies, including Terraform, Docker, and kubectl.
3. Create GCP service accounts and set up IAM roles as defined in the project requirements.
4. Configure your network components, including VPC, subnets, firewall rules, and NAT gateway using Terraform.
5. Deploy the MongoDB replica set across the three zones.
6. Dockerize the Node.js web application and push it to the Artifact Registry.
7. Create a GKE cluster across three zones.
8. Expose the web application using an ingress controller or load balancer.
9. Enable Identity-Aware Proxy (IAP) for secure access control.

## Author

[Mostafa Elkhouly]

For any questions or assistance, please contact [mostafa.elkhouly97@gmail.com].
