resource "google_project_iam_custom_role" "role_vm" {
  role_id     = "managementVMRole"
  title       = "Management VM Instance Custom Role"
  description = "Create and manage GKE Cluster, repositories and artifacts."
  permissions = [
    "container.pods.attach",
"container.pods.create",
"container.pods.delete",
"container.pods.evict",
"container.pods.exec",
"container.pods.get",
"container.pods.getLogs",
"container.pods.getStatus",
"container.pods.initialize",
"container.pods.list",
"container.pods.portForward",
"container.pods.proxy",
"container.pods.update",
"container.pods.updateStatus",
"container.replicaSets.create",
"container.replicaSets.delete",
"container.replicaSets.get",
"container.replicaSets.getScale",
"container.replicaSets.getStatus",
"container.replicaSets.list",
"container.replicaSets.update",
"container.replicaSets.updateScale",
"container.replicaSets.updateStatus",
    "container.deployments.create",
"container.deployments.delete",
"container.deployments.get",
"container.deployments.getScale",
"container.deployments.getStatus",
"container.deployments.list",
"container.deployments.rollback",
"container.deployments.update",
"container.deployments.updateScale",
"container.deployments.updateStatus",
  "artifactregistry.repositories.create",
  "artifactregistry.repositories.delete",
  "artifactregistry.repositories.deleteArtifacts",
  "artifactregistry.versions.delete",
  "artifactregistry.dockerimages.get",
  "artifactregistry.dockerimages.list"
  ]

}
