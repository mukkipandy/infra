variable "email_domains" {
  type      = string
  sensitive = false
}

locals {
  zones = [for domain in split(",", var.email_domains) : trimspace(domain)]
}
