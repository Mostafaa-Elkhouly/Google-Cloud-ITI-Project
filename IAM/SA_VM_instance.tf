resource "google_service_account" "instance_sa" {
  account_id   = "instance-service-account"
  display_name = "Custom Service Account for VM Instance"
}

resource "google_project_iam_member" "instance_sa_role" {
  project = var.project_id
  role    = "roles/container.admin" 
  member  = "serviceAccount:${google_service_account.instance_sa.email}"
}