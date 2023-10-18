resource "google_service_account" "service_account_instance" {
  account_id   = "instance-service-account"
  display_name = "Custom Service Account for VM Instance"
}

resource "google_service_account_iam_binding" "artifact_role_binding" {
  service_account_id = google_service_account.service_account_instance.name
  role               = google_project_iam_custom_role.artifact-registry-role.name
  members            = ["serviceAccount:${google_service_account.service_account_instance.email}"]
}
