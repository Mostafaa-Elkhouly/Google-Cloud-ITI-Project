resource "google_service_account" "instance_sa" {
  account_id   = "instance-service-account"
  display_name = "Custom Service Account for VM Instance"
}

resource "google_service_account_iam_binding" "role_vm_binding" {
  service_account_id = google_service_account.instance_sa.name
  role               = google_project_iam_custom_role.role_vm.name
  members            = ["serviceAccount:${google_service_account.instance_sa.email}"]
}