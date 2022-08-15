locals {
  random = "${var.global-prefix}${random_string.random.result}"

  aaa_network_aaa-name  = "${local.random}-${var.aaa_network_aaa-name}"
  aaa_instance_aaa-name = "${local.random}-${var.aaa_instance_aaa-name}"
  aaa_instance_bbb-name = "${local.random}-${var.aaa_instance_bbb-name}"
  aaa_instance_ccc-name = "${local.random}-${var.aaa_instance_ccc-name}"
}