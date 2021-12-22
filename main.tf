terraform {
  required_version = "~> 1.1"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.27.0"
    }
  }
}

variable "mail" {}

resource "tfe_organization" "this" {
  name  = "my_new_org_name"
  email = var.mail
}
