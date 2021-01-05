resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.environment}-${var.name}"
  location = var.az_location
}

resource "azurerm_public_ip" "pip" {
  name                = "pip-${var.environment}-${var.name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = var.allocation_method
  sku                 = var.sku
}

resource "azurerm_bastion_host" "host" {
  name                = "bas-${var.environment}-${var.name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}