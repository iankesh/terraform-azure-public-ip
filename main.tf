data "azurerm_resource_group" "azure_rg" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "az_public_ip" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.azure_rg.name
  location            = data.azurerm_resource_group.azure_rg.location
  allocation_method   = var.allocation
  ip_version          = var.ip_version

  tags = {
    Region      = "data.azurerm_resource_group.azure_rg.location"
    Team        = "var.team_tag"
    Environment = "var.env"
    Creator     = "var.creator"
  }
}
