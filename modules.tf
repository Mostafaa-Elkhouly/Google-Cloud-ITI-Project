#Passing Modules Inputs Arguments
module "network_module" {
  source = "./Network"
}

module "IAM_module" {
  source = "./IAM"
}

module "compute_module" {
  source = "./Compute"
}

module "storage_module" {
  source = "./Storage"
}

module "GKE_module" {
  source = "./GKE"
}