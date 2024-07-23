data "azurerm_resource_group" "cig_tf_poc_rg" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}