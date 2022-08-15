resource "google_compute_subnetwork" "aaa_instance_aaa" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.network
}