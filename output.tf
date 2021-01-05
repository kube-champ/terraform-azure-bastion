output "id" {
  value = azurerm_bastion_host.host.id
}

output "fqdn" {
  value = azurerm_bastion_host.host.dns_name
}

output "public_ip" {
  sensitive = true
  value     = azurerm_public_ip.pip.ip_address
}