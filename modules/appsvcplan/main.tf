data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
#  os_type             = "Windows"
#  sku_name            = "P1v2"

  sku {
      os_type = var.app_service_plan.os_type
      sku_name = var.app_service_plan.sku_name     
  }
}