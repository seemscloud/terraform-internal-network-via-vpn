# Configuration
global-project = "core-337701"
global-region  = "europe-central2"
global-prefix  = "a"

# Default
default-zones = ["europe-central2-a", "europe-central2-b", "europe-central2-c"]

# Keys
aaa_user_aaa-terraform        = "terraform"
aaa_ssh_pub_key_aaa-terraform = "terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkuj+CeqrJyLSCMgtCPcFN+4+zRQw4LCziEAuvDEdhyiix4DbZkBcL1fsgHeYKsY52wVga9zYF600m2h3HMNxi7pLlZKexcuJo7bJuB+fRXkSrevscqbW1NWXavRZZZ7DSun1DENDLAtlXlOPKITz9RdOg5Ook4Q3d50VNH2yrNK5Tma9ZAs7gNzKjrIaWMwUC0Rl5+QUQ98aVZUJg/HFqwrpgJkZH5iHP18qc/Q4wpmYO0AjsmiWSYYUYitMEkQF7ArYXqEAQQOOIdTzZBL2x3AHgeyUYeMJxgr4MM/gFqg0e0IG7Ss/tSPKN7N1DP96Eb5pI3uWJ2CptqPcCtmmBnSu3XH2nvBZqRzo0q/jxjRRtTN+E5kpnlL+5/OWx7CsAh+cdtRqj1dEk6TB2aKGWSSzCM+NvR6C9ZWkWrcEjNB2Vz78m1UfGXjdjnM8WUqBM4Z3lX012hJMZ6VEPLexYZgRdfx19AiwxIoDL6XPSGAOcN32fIdx0cqYFX0LAudk="

# VPC
aaa_network_aaa-name                    = "network"
aaa_network_aaa-auto_create_subnetworks = false

# VPC Router
aaa_network_aaa-address_type = "EXTERNAL"

# VPC (Bastion) Subnet
aaa_subnetwork_aaa-name          = "bastion"
aaa_subnetwork_aaa-ip_cidr_range = "10.100.255.0/24"

# VPC (Foo) Subnet
aaa_subnetwork_bbb-name          = "foo"
aaa_subnetwork_bbb-ip_cidr_range = "10.100.10.0/29"

# VPC (Bar) Subnet
aaa_subnetwork_ccc-name          = "bar"
aaa_subnetwork_ccc-ip_cidr_range = "10.100.20.8/29"

# Instance (Bastion)
aaa_instance_aaa-name                  = "bastion"
aaa_instance_aaa-machine_type          = "e2-highcpu-2"
aaa_instance_aaa-zone                  = null
aaa_instance_aaa-tags                  = ["bastion", "all"]
aaa_instance_aaa-address_type          = "EXTERNAL"
aaa_instance_aaa-desired_status        = "RUNNING"
aaa_instance_aaa-boot_image            = "ubuntu-2004-lts"
aaa_instance_aaa-boot_disk_size        = 32
aaa_instance_aaa-boot_disk_type        = "pd-ssd"
aaa_instance_aaa-boot_disk_auto_delete = false
aaa_instance_aaa-preemptible           = true
aaa_instance_aaa-automatic_restart     = false

# Instance (Foo)
aaa_instance_bbb-name                  = "foo"
aaa_instance_bbb-machine_type          = "e2-highcpu-2"
aaa_instance_bbb-zones                 = []
aaa_instance_bbb-tags                  = ["foo", "all"]
aaa_instance_bbb-address_type          = "EXTERNAL"
aaa_instance_bbb-desired_status        = "RUNNING"
aaa_instance_bbb-boot_image            = "ubuntu-2004-lts"
aaa_instance_bbb-boot_disk_size        = 32
aaa_instance_bbb-boot_disk_type        = "pd-ssd"
aaa_instance_bbb-boot_disk_auto_delete = false
aaa_instance_bbb-preemptible           = true
aaa_instance_bbb-automatic_restart     = false

# Instance (Bar)
aaa_instance_ccc-name                  = "bar"
aaa_instance_ccc-machine_type          = "e2-highcpu-2"
aaa_instance_ccc-zones                 = []
aaa_instance_ccc-tags                  = ["bar", "all"]
aaa_instance_ccc-address_type          = "EXTERNAL"
aaa_instance_ccc-desired_status        = "RUNNING"
aaa_instance_ccc-boot_image            = "ubuntu-2004-lts"
aaa_instance_ccc-boot_disk_size        = 32
aaa_instance_ccc-boot_disk_type        = "pd-ssd"
aaa_instance_ccc-boot_disk_auto_delete = false
aaa_instance_ccc-preemptible           = true
aaa_instance_ccc-automatic_restart     = false