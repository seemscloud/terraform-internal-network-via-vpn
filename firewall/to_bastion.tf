resource "google_compute_firewall" "internet_to_aaa_interface_aaa" {
  name    = "internet-to-bastion"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_ranges = [
    "0.0.0.0/0"
  ]
}