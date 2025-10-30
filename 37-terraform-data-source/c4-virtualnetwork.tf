resource "azurerm_virtual_network" "myvnet" {
  name                = local.vnet_name
  address_space       = local.vnet_addres_space
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags = local.common_tags
}
