terraform {
  backend "local" {
    path = ".states/terraform.tfstate"
  }
}

provider "google" {
  credentials = ".credentials.json"
  project     = var.global-project
  region      = var.global-region
}

resource "google_compute_project_metadata" "metadata" {
  metadata = {
    ssh-keys = var.aaa_ssh_pub_key_aaa-terraform
  }
}

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}