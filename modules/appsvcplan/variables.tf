variable "app_service_plan_name" {
    type        = string
    description = "App Service Plan name in Azure"
}
variable "resource_group_name" {
    type      = string
    description = "RG name in Azure"
    default = "rg"
}
variable "resource_group_location" {
    type      = string
    description = "RG location in Azure"
    default = "Canada Central"
}
variable "location" {
    type = string
    description = "Azure Location"
    default = "Canada Central"
}
variable "os_type" {
    type = string
    description = "App Service Plan OS Type"
    default = "Windows"
}
variable "sku_name" {
    type = string
    description = "App Service Plan OS SKU Name"
    default = "P1v2"
}