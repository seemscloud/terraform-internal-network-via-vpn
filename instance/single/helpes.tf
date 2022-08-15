data "google_compute_zones" "available" {}

resource "random_shuffle" "google_compute_zones" {
  input        = data.google_compute_zones.available.names
  result_count = 1
}