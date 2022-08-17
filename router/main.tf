resource "google_compute_router" "generic" {
  name = var.name

  network = var.network.id
}

resource "google_compute_router_nat" "generic" {
  name = var.name

  router = google_compute_router.generic.name

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = [var.nat_ip.name]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = var.subnetwork.id
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"
    ]
  }
}