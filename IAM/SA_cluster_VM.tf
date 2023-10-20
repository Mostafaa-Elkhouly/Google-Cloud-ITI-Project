resource "google_service_account" "cluster_sa" {
  account_id   = "cluster-service-account"
  display_name = "Custom Service Account for GKE cluster VM Instances"
}

resource "google_project_iam_member" "cluster_sa_role" {
  project = var.project_id
  role    = "roles/storage.objectViewer" 
  member  = "serviceAccount:${google_service_account.cluster_sa.email}"
}
