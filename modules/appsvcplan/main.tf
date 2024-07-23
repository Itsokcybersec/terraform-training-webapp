  resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name  
  
  sku {
      tier = var.app_service_plan.tier
      size = var.app_service_plan.size
  }
}