resource "google_compute_network" "generic" {
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
}