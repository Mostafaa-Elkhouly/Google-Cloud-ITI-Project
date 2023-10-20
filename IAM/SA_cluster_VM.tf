resource "google_service_account" "cluster_instances_sa" {
  account_id   = "cluster-service-account"
  display_name = "Custom Service Account for GKE cluster VM Instances"
}

resource "google_service_account_iam_binding" "role_cluster_binding" {
  service_account_id = google_service_account.cluster_instances_sa.name
  role               = google_project_iam_custom_role.cluster_instances_role.name
  members            = ["serviceAccount:${google_service_account.cluster_instances_sa.email}"]
}