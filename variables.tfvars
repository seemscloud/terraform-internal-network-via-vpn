# Configuration
global-project = "core-337701"
global-prefix  = "a"

# Keys
aaa_user_aaa-terraform        = "terraform"
aaa_ssh_pub_key_aaa-terraform = "terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkuj+CeqrJyLSCMgtCPcFN+4+zRQw4LCziEAuvDEdhyiix4DbZkBcL1fsgHeYKsY52wVga9zYF600m2h3HMNxi7pLlZKexcuJo7bJuB+fRXkSrevscqbW1NWXavRZZZ7DSun1DENDLAtlXlOPKITz9RdOg5Ook4Q3d50VNH2yrNK5Tma9ZAs7gNzKjrIaWMwUC0Rl5+QUQ98aVZUJg/HFqwrpgJkZH5iHP18qc/Q4wpmYO0AjsmiWSYYUYitMEkQF7ArYXqEAQQOOIdTzZBL2x3AHgeyUYeMJxgr4MM/gFqg0e0IG7Ss/tSPKN7N1DP96Eb5pI3uWJ2CptqPcCtmmBnSu3XH2nvBZqRzo0q/jxjRRtTN+E5kpnlL+5/OWx7CsAh+cdtRqj1dEk6TB2aKGWSSzCM+NvR6C9ZWkWrcEjNB2Vz78m1UfGXjdjnM8WUqBM4Z3lX012hJMZ6VEPLexYZgRdfx19AiwxIoDL6XPSGAOcN32fIdx0cqYFX0LAudk="

# VPC (Foo)
aaa_vpc_aaa-name                    = "aaa"
aaa_vpc_aaa-auto_create_subnetworks = false

# VPC (Foo) Subnets
aaa_subnet_aaa-name          = "bastion"
aaa_subnet_aaa-region        = "europe-central2"
aaa_subnet_aaa-ip_cidr_range = "10.100.255.0/24"

aaa_subnet_bbb-name          = "aaa"
aaa_subnet_bbb-region        = "europe-central2"
aaa_subnet_bbb-ip_cidr_range = "10.100.10.0/29"

aaa_subnet_ccc-name          = "bbb"
aaa_subnet_ccc-region        = "europe-central2"
aaa_subnet_ccc-ip_cidr_range = "10.100.20.8/24"

# Instance (Bastion)
aaa_instance_aaa-name              = "bastion"
aaa_instance_aaa-image             = "ubuntu-2004-lts"
aaa_instance_aaa-root_disk_size    = 32
aaa_instance_aaa-root_disk_type    = "pd-ssd"
aaa_instance_aaa-desired_status    = "RUNNING"
aaa_instance_aaa-tags              = ["bastion", "all"]
aaa_instance_aaa-type              = "e2-highcpu-2"
aaa_instance_aaa-preemptible       = false
aaa_instance_aaa-automatic_restart = false