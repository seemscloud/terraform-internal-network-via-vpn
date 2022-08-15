locals {
  random = "${var.global-prefix}${random_string.random.result}"

  aaa_vpc_aaa-name = "${local.random}-${var.aaa_vpc_aaa-name}"
}