resource "google_compute_network" "aaa_network_aaa" {
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
}