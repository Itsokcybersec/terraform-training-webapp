output "app_service_output_id" {
    value = "${azurerm_app_service.app_service.id}"
    #value = "${webapp.app_service_output_id.id}"
}

output "webapp_ips" {
    value = azurerm_app_service.app_service.outbound_ip_addresses
}
