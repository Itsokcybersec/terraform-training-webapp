# https://registry.terraform.io/providers/hashicorp/azurerm/latest
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }

  cloud {
    organization = "itsok"
# Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
#    hostname = "app.terraform.io"

    workspaces {   
      name = "terraform-training-webapp"
    }
  }
}