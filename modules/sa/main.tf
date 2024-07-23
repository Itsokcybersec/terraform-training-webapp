data "azurerm_resource_group" "cig_tf_poc_rg" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "sa" {
  name = var.saname
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "GRS"
}