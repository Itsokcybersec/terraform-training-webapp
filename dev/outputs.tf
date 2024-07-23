output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  value = module.cig_tf_poc_rg.name
}

output "resource_group_location" {
  value = module.cig_tf_poc_rg.location
}