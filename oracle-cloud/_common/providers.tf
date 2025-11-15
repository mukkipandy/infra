terraform {
  required_version = "~> 1"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "7.20.0"
    }
  }
}

variable "tenancy_ocid" {
  type      = string
  sensitive = false
}

variable "oci_private_key" {
  type      = string
  sensitive = true
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  private_key  = var.oci_private_key
}
