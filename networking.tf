# VPC (Foo)
module "aaa_network_aaa" {
  source = "./network"

  name                    = local.aaa_network_aaa-name
  auto_create_subnetworks = var.aaa_network_aaa-auto_create_subnetworks
}

module "firewall" {
  source = "./firewall"

  network = module.aaa_network_aaa.generic.id
}

module "aaa_instance_aaa-nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_instance_aaa-name}"
  type = var.aaa_instance_aaa-address_type
}

# VPC (Bastion) Subnets
module "aaa_subnetwork_aaa" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_aaa-name
  ip_cidr_range = var.aaa_subnetwork_aaa-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic.id

  depends_on = [module.aaa_network_aaa]
}

# VPC (Foo) Subnets
module "aaa_subnetwork_bbb" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_bbb-name
  ip_cidr_range = var.aaa_subnetwork_bbb-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic.id

  depends_on = [module.aaa_network_aaa]
}

# VPC Router (Foo)
module "aaa_subnetwork_bbb-router_nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_bbb-name}"
  type = var.aaa_network_aaa-address_type
}

# VPC (Bar) Subnets
module "aaa_subnetwork_ccc" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_ccc-name
  ip_cidr_range = var.aaa_subnetwork_ccc-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic.id

  depends_on = [module.aaa_network_aaa]
}

# VPC Router (Foo)
module "aaa_subnetwork_ccc-router_nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_ccc-name}"
  type = var.aaa_network_aaa-address_type
}