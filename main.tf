# VPC (Foo)
module "aaa_vpc_aaa" {
  source = "./vpc"

  name                    = local.aaa_vpc_aaa-name
  auto_create_subnetworks = var.aaa_vpc_aaa-auto_create_subnetworks
}

# VPC (Foo) Subnets
module "aaa_subnet_aaa" {
  source = "./vpc-subnets"

  name          = var.aaa_subnet_aaa-name
  ip_cidr_range = var.aaa_subnet_aaa-ip_cidr_range
  region        = var.aaa_subnet_aaa-region
  network       = module.aaa_vpc_aaa.name

  depends_on = [module.aaa_vpc_aaa]
}

module "aaa_subnet_bbb" {
  source = "./vpc-subnets"

  name          = var.aaa_subnet_bbb-name
  ip_cidr_range = var.aaa_subnet_bbb-ip_cidr_range
  region        = var.aaa_subnet_bbb-region
  network       = module.aaa_vpc_aaa.name

  depends_on = [module.aaa_vpc_aaa]
}


module "aaa_subnet_ccc" {
  source = "./vpc-subnets"

  name          = var.aaa_subnet_ccc-name
  ip_cidr_range = var.aaa_subnet_ccc-ip_cidr_range
  region        = var.aaa_subnet_ccc-region
  network       = module.aaa_vpc_aaa.name

  depends_on = [module.aaa_vpc_aaa]
}