
terraform {
  required_providers {
    bigip = {
      source = "terraform-providers/bigip"
    }
  }
  required_version = ">= 0.13"
}

resource "bigip_bigiq_as3" "exampletask" {
  bigiq_address  = var.hostname
  bigiq_user     = var.username
  bigiq_password = var.password
  as3_json       = file(var.declaration)
}
