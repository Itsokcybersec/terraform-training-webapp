resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-rg"
  location = var.location
}

module "storage_account1" {
    source = "./modules/sa"
    saname = "cig-tf-poc-sa-1"
    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

}

module "storage_account2" {
    source = "./modules/sa"
    saname = "cig-tf-poc-sa-2"
    resource_group_name = azurerm_resource_group.rg.name
    resource_group_location = azurerm_resource_group.rg.location

}