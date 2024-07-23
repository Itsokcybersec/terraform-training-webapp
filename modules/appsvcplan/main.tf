resource "azurerm_service_plan" "webapp_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = module.cig_tf_poc_rg.name
  location            = module.cig_tf_poc_rg.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}