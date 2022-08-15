resource "google_compute_address" "generic" {
  name         = var.name
  address_type = var.type
}