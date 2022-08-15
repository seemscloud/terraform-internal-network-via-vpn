resource "google_compute_router" "generic" {
  name = var.name

  network = google_compute_network.aaa_network_aaa.name
}

resource "google_compute_router_nat" "generic" {
  name = var.aaa_instance_bbb-name

  router = google_compute_router.aaa_instance_bbb.name
  region = google_compute_router.aaa_instance_bbb.region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = google_compute_address.aaa_instance_bbb-external-nat.*.self_link

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.aaa_instance_bbb.name
    source_ip_ranges_to_nat = [
      "ALL_IP_RANGES"
    ]
  }

  depends_on = [
    google_compute_subnetwork.aaa_instance_bbb,
    google_compute_router.aaa_instance_bbb,
    google_compute_address.aaa_instance_bbb-external-nat
  ]
}