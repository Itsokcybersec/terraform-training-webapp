variable "saname" {
    type      = string
    description = "Storage Account Name"
}

variable "resource_group_location" {
    type      = string
    description = "RG location in Azure"
    default = "Canada Central"
}

#Variables for module blocks
variable "environment" {
  type = string
  description = "Environment Name"
  default = "git-poc"
}

variable "location" {
  type = string
  description = "Azure Location"
  default = "Canada Central"
}

variable "owner" {
  type = string
  description = "Owner tag for resource creation"
  default = "DevOps"
}

variable "deployment" {
  type = string
  description = "Deployment Mode"
  default = "terraform"
}

variable "department" {
  type = string
  description = "Deployment Team"
  default = "DevOps"
}

variable "resource_group_name" {
  type = string
  description = "Resource Group Name"
  default = "rg"
}

variable "company_division" {
  type = string
  description = "Company division"
  default = "xyz"
}
