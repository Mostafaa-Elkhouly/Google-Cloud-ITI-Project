terraform {
  backend "gcs" {
    bucket = "terraform-backend-tfstate-bucket"
    prefix = "terraform/state"
  }
}