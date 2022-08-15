# Configuration
variable "global-project" { type = string }
variable "global-prefix" { type = string }

# Keys
variable "aaa_user_aaa-terraform" { type = string }
variable "aaa_ssh_pub_key_aaa-terraform" { type = string }

# VPC (Foo)
variable "aaa_vpc_aaa-name" { type = string }
variable "aaa_vpc_aaa-auto_create_subnetworks" { type = bool }

# VPC (Foo) Subnets
variable "aaa_subnet_aaa-name" { type = string }
variable "aaa_subnet_aaa-region" { type = string }
variable "aaa_subnet_aaa-ip_cidr_range" { type = string }

variable "aaa_subnet_bbb-name" { type = string }
variable "aaa_subnet_bbb-region" { type = string }
variable "aaa_subnet_bbb-ip_cidr_range" { type = string }

variable "aaa_subnet_ccc-name" { type = string }
variable "aaa_subnet_ccc-region" { type = string }
variable "aaa_subnet_ccc-ip_cidr_range" { type = string }

# Instance (Bastion)
variable "aaa_instance_aaa-name" { type = string }
variable "aaa_instance_aaa-image" { type = string }
variable "aaa_instance_aaa-root_disk_size" { type = number }
variable "aaa_instance_aaa-root_disk_type" { type = string }
variable "aaa_instance_aaa-desired_status" { type = string }
variable "aaa_instance_aaa-tags" { type = list(string) }
variable "aaa_instance_aaa-type" { type = string }
variable "aaa_instance_aaa-preemptible" { type = bool }
variable "aaa_instance_aaa-automatic_restart" { type = bool }