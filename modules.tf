#Passing Modules Inputs Arguments
module "network_module" {
  source       = "./Network"
  subnets_cidr = var.subnets_cidr_list
  regions      = var.regions_list
}

module "IAM_module" {
  source = "./IAM"
}

module "compute_module" {
  source            = "./Compute"
  instance_sa_email = module.IAM_module.instance_sa_email
  vpc_network_name  = module.network_module.vpc_network_name
  vm_subnet         = module.network_module.subnets_list[0].name
  vm_region         = var.regions_list[0]
}

module "storage_module" {
  source = "./Storage"
}

module "GKE_module" {
  source = "./GKE"
}