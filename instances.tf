## Instance Single (Bastion)
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
#  network_name    = module.aaa_network_aaa.name
#  subnetwork_name = module.aaa_subnetwork_aaa.name
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