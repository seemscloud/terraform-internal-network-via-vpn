variable "name" { type = string }
variable "network" {
  type = object({
    id = string
  })
}
variable "subnetwork" {
  type = object({
    id = string
  })
}
variable "nat_ip" {
  type = object({
    name = string
  })
}