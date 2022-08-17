################################################################################
#
# VPC Network (AAA)

module "aaa_network_aaa" {
  source = "./network"

  name                    = local.aaa_network_aaa-name
  auto_create_subnetworks = var.aaa_network_aaa-auto_create_subnetworks
}

module "firewall" {
  source = "./firewall"

  network = module.aaa_network_aaa.generic
}

################################################################################
#
# Bastion with NAT IP address

module "aaa_instance_aaa-nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_instance_aaa-name}-host-nat-ip"
  type = var.aaa_instance_aaa-address_type
}

module "aaa_subnetwork_aaa" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_aaa-name
  ip_cidr_range = var.aaa_subnetwork_aaa-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic

  depends_on = [module.aaa_network_aaa]
}

################################################################################
#
# Subnet AAA-BBB (
#   - router NAT IP
#   - one instance per AZ

module "aaa_subnetwork_bbb" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_bbb-name
  ip_cidr_range = var.aaa_subnetwork_bbb-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic

  depends_on = [module.aaa_network_aaa]
}

module "aaa_subnetwork_bbb-router-nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_bbb-name}-router-nat-ip"
  type = var.aaa_network_aaa-address_type
}

module "aaa_subnetwork_bbb-router" {
  source = "./router"

  name       = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_bbb-name}-router"
  nat_ip     = module.aaa_subnetwork_bbb-router-nat_ip.generic
  subnetwork = module.aaa_subnetwork_bbb.generic
  network    = module.aaa_network_aaa.generic

  depends_on = [module.aaa_network_aaa, module.aaa_subnetwork_bbb, module.aaa_subnetwork_bbb-router-nat_ip]
}

################################################################################
#
# Subnet AAA-CCC (
#   - router NAT IP
#   - one instance per AZ

module "aaa_subnetwork_ccc" {
  source = "./subnetwork"

  name          = var.aaa_subnetwork_ccc-name
  ip_cidr_range = var.aaa_subnetwork_ccc-ip_cidr_range
  region        = var.global-region
  network       = module.aaa_network_aaa.generic

  depends_on = [module.aaa_network_aaa]
}

module "aaa_subnetwork_ccc-router-nat_ip" {
  source = "./address"

  name = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_ccc-name}-router-nat-ip"
  type = var.aaa_network_aaa-address_type
}

module "aaa_subnetwork_ccc-router" {
  source = "./router"

  name       = "${local.aaa_network_aaa-name}-${var.aaa_subnetwork_bbb-name}-router"
  nat_ip     = module.aaa_subnetwork_bbb-router-nat_ip.generic
  subnetwork = module.aaa_subnetwork_bbb.generic
  network    = module.aaa_network_aaa.generic

  depends_on = [module.aaa_network_aaa, module.aaa_subnetwork_ccc, module.aaa_subnetwork_ccc-router-nat_ip]
}

#module "aaa_instance_aaa" {
#  source = "./instance/single"
#
#  name                  = local.aaa_instance_aaa-name
#  machine_type          = var.aaa_instance_aaa-machine_type
#  zone                  = var.aaa_instance_aaa-zone
#  tags                  = var.aaa_instance_aaa-tags
#  nat_ip                = module.aaa_instance_aaa-nat_ip
#  desired_status        = var.aaa_instance_aaa-desired_status
#  boot_image            = var.aaa_instance_aaa-boot_image
#  boot_disk_size        = var.aaa_instance_aaa-boot_disk_size
#  boot_disk_type        = var.aaa_instance_aaa-boot_disk_type
#  boot_disk_auto_delete = var.aaa_instance_aaa-boot_disk_auto_delete
#  preemptible           = var.aaa_instance_aaa-preemptible
#  automatic_restart     = var.aaa_instance_aaa-automatic_restart
#
#  network_name    = module.aaa_network_aaa
#  subnetwork_name = module.aaa_subnetwork_aaa
#
#  depends_on = [module.aaa_network_aaa, module.aaa_subnetwork_aaa]
#}
#
## Instance Multi (Foo)
#module "aaa_instance_bbb" {
#  source = "./instance/multi"
#
#  name                  = local.aaa_instance_bbb-name
#  machine_type          = var.aaa_instance_bbb-machine_type
#  zones                 = var.default-zones
#  tags                  = var.aaa_instance_bbb-tags
#  nat_ip                = "x"
#  desired_status        = var.aaa_instance_bbb-desired_status
#  boot_image            = var.aaa_instance_bbb-boot_image
#  boot_disk_size        = var.aaa_instance_bbb-boot_disk_size
#  boot_disk_type        = var.aaa_instance_bbb-boot_disk_type
#  boot_disk_auto_delete = var.aaa_instance_bbb-boot_disk_auto_delete
#  preemptible           = var.aaa_instance_bbb-preemptible
#  automatic_restart     = var.aaa_instance_bbb-automatic_restart
#
#  network_name    = module.aaa_network_aaa.name
#  subnetwork_name = module.aaa_subnetwork_bbb.name
#
#  depends_on = [module.aaa_network_aaa, module.aaa_subnetwork_bbb]
#}
#
## Instance Multi (Foo)
#module "aaa_instance_ccc" {
#  source = "./instance/multi"
#
#  name                  = local.aaa_instance_ccc-name
#  machine_type          = var.aaa_instance_ccc-machine_type
#  zones                 = var.default-zones
#  tags                  = var.aaa_instance_ccc-tags
#  nat_ip                = "x"
#  desired_status        = var.aaa_instance_ccc-desired_status
#  boot_image            = var.aaa_instance_ccc-boot_image
#  boot_disk_size        = var.aaa_instance_ccc-boot_disk_size
#  boot_disk_type        = var.aaa_instance_ccc-boot_disk_type
#  boot_disk_auto_delete = var.aaa_instance_ccc-boot_disk_auto_delete
#  preemptible           = var.aaa_instance_ccc-preemptible
#  automatic_restart     = var.aaa_instance_ccc-automatic_restart
#
#  network_name    = module.aaa_network_aaa.name
#  subnetwork_name = module.aaa_subnetwork_ccc.name
#
#  depends_on = [module.aaa_network_aaa, module.aaa_subnetwork_ccc]
#}