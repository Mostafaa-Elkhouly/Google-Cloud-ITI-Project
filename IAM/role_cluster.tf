resource "google_project_iam_custom_role" "cluster_instances_role" {
  role_id     = "clusterInstancesRole"
  title       = "GKE Cluster Instances Custom Role"
  description = "Create and manage mongoDB."
  permissions = [
    "resourcemanager.projects.get",
    "storage.managedFolders.get",
    "storage.managedFolders.list",
    "storage.objects.get",
    "storage.objects.list",
]
}
