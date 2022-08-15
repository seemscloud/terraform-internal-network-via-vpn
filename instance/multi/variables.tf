variable "name" { type = string }
variable "machine_type" { type = string }
variable "zones" { type = list(string) }
variable "tags" { type = list(string) }
variable "nat_ip" { type = string }
variable "desired_status" { type = string }
variable "boot_image" { type = string }
variable "boot_disk_size" { type = number }
variable "boot_disk_type" { type = string }
variable "boot_disk_auto_delete" { type = bool }
variable "preemptible" { type = bool }
variable "automatic_restart" { type = bool }

variable "network_name" { type = string }
variable "subnetwork_name" { type = string }