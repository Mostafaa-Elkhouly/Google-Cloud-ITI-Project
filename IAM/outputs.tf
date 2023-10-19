#IAM Module Output Attributes
output "instance_sa_email" {
  description = "The email address of the VM instance service account"
  value       = google_service_account.instance_sa.email
}