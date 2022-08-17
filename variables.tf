# Configuration
variable "global-project" { type = string }
variable "global-region" { type = string }
variable "global-prefix" { type = string }

# Defaults
variable "default-zones" { type = list(string) }

# Keys
variable "aaa_user_aaa-terraform" { type = string }
variable "aaa_ssh_pub_key_aaa-terraform" { type = string }

# VPC (Foo)
variable "aaa_network_aaa-name" { type = string }
variable "aaa_network_aaa-auto_create_subnetworks" { type = bool }

# VPC (Bastion) Subnet
variable "aaa_subnetwork_aaa-name" { type = string }
variable "aaa_subnetwork_aaa-ip_cidr_range" { type = string }

# VPC (Foo) Subnet
variable "aaa_subnetwork_bbb-name" { type = string }
variable "aaa_subnetwork_bbb-ip_cidr_range" { type = string }
variable "aaa_subnetwork_bbb-router-nat_ip-type" { type = string }

# VPC (Bar) Subnet
variable "aaa_subnetwork_ccc-name" { type = string }
variable "aaa_subnetwork_ccc-ip_cidr_range" { type = string }
variable "aaa_subnetwork_ccc-router-nat_ip-type" { type = string }

# Instance (Bastion)
variable "aaa_instance_aaa-name" { type = string }
variable "aaa_instance_aaa-machine_type" { type = string }
variable "aaa_instance_aaa-zone" { type = string }
variable "aaa_instance_aaa-tags" { type = list(string) }
variable "aaa_instance_aaa-address_type" { type = string }
variable "aaa_instance_aaa-desired_status" { type = string }
variable "aaa_instance_aaa-boot_image" { type = string }
variable "aaa_instance_aaa-boot_disk_size" { type = number }
variable "aaa_instance_aaa-boot_disk_type" { type = string }
variable "aaa_instance_aaa-boot_disk_auto_delete" { type = bool }
variable "aaa_instance_aaa-preemptible" { type = bool }
variable "aaa_instance_aaa-automatic_restart" { type = bool }

# Instance (Foo)
variable "aaa_instance_bbb-name" { type = string }
variable "aaa_instance_bbb-machine_type" { type = string }
variable "aaa_instance_bbb-zones" { type = list(string) }
variable "aaa_instance_bbb-tags" { type = list(string) }
variable "aaa_instance_bbb-address_type" { type = string }
variable "aaa_instance_bbb-desired_status" { type = string }
variable "aaa_instance_bbb-boot_image" { type = string }
variable "aaa_instance_bbb-boot_disk_size" { type = number }
variable "aaa_instance_bbb-boot_disk_type" { type = string }
variable "aaa_instance_bbb-boot_disk_auto_delete" { type = bool }
variable "aaa_instance_bbb-preemptible" { type = bool }
variable "aaa_instance_bbb-automatic_restart" { type = bool }

# Instance (Bar)
variable "aaa_instance_ccc-name" { type = string }
variable "aaa_instance_ccc-machine_type" { type = string }
variable "aaa_instance_ccc-zones" { type = list(string) }
variable "aaa_instance_ccc-tags" { type = list(string) }
variable "aaa_instance_ccc-address_type" { type = string }
variable "aaa_instance_ccc-desired_status" { type = string }
variable "aaa_instance_ccc-boot_image" { type = string }
variable "aaa_instance_ccc-boot_disk_size" { type = number }
variable "aaa_instance_ccc-boot_disk_type" { type = string }
variable "aaa_instance_ccc-boot_disk_auto_delete" { type = bool }
variable "aaa_instance_ccc-preemptible" { type = bool }
variable "aaa_instance_ccc-automatic_restart" { type = bool }