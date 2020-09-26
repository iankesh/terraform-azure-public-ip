output "az_public_ip_address" {
  description = "The address of the newly created Public IP"
  value       = azurerm_public_ip.az_public_ip.ip_address
}
