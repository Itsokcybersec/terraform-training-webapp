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
variable "app_service_plan" {
    type      = map
    description = "App Service Tier and SKU"
    default = {
        os_type = "Windows"
        sku_name = "P1v2"
    }
}
variable "location" {
    type = string
    description = "Azure Location"
    default = "Canada Central"
}