resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}