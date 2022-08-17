variable "name" { type = string }
variable "machine_type" { type = string }
variable "zone" { type = string }
variable "tags" { type = list(string) }
variable "nat_ip" {
  type = object({
    name = string
    address = string
  })
}
variable "desired_status" { type = string }
variable "boot_image" { type = string }
variable "boot_disk_size" { type = number }
variable "boot_disk_type" { type = string }
variable "boot_disk_auto_delete" { type = bool }
variable "preemptible" { type = bool }
variable "automatic_restart" { type = bool }
variable "network" {
  type = object({
    name = string
  })
}
variable "subnetwork" {
  type = object({
    name = string
  })
}