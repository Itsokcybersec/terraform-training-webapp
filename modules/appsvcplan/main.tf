data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

  resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  
  sku {
      tier = var.app_service_plan.tier
      size = var.app_service_plan.size
  }
}