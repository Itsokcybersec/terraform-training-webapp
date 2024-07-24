resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-rg"
  location = var.location
}

resource "random_integer" "ri" {
  min = 10000000
  max = 99999999
}

module "app_service_plan1" {
    source = "../modules/appsvcplan"
    app_service_plan_name = "cig-tf-poc-app-svc-plan-${random_integer.ri.result}"
    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

}

module "storage_account1" {
    source = "../modules/sa"
    saname = "cigtfpocsvcacct${random_integer.ri.result}"
    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

}

module "storage_account2" {
    source = "../modules/sa"
    saname = "cigtfpocsvcacct${random_integer.ri.result}"
    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

}