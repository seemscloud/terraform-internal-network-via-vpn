resource "google_compute_firewall" "bastion_to_all" {
  name    = "bastion-to-all"
  network = var.network.name

  allow {
    protocol = "tcp"
    ports    = [
      "22"
    ]
  }

  source_tags = [
    "bastion"
  ]

  target_tags = [
    "all"
  ]
}