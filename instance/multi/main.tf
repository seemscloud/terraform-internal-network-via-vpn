resource "google_compute_instance" "generic" {
  count = length(var.zones)

  name           = "${var.name}-${count.index}"
  machine_type   = var.machine_type
  zone           = var.zones[count.index]
  tags           = var.tags
  desired_status = var.desired_status

  boot_disk {
    initialize_params {
      image = var.boot_image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }

    auto_delete = var.boot_disk_auto_delete
  }

  network_interface {
    network    = var.network_name
    subnetwork = var.subnetwork_name
  }

  scheduling {
    preemptible       = var.preemptible
    automatic_restart = var.automatic_restart
  }
}