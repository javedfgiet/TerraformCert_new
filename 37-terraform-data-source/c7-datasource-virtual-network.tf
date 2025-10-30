data "azurerm_virtual_network" "ds_vnet" {
  name = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.myrg.name
}

output "ds_vnet_name" {
  value = data.azurerm_virtual_network.ds_vnet.name
}

output "ds_vnet_id" {
  value = data.azurerm_virtual_network.ds_vnet.id
}

output "ds_vnet_addressspace" {
  value = data.azurerm_virtual_network.ds_vnet.address_space
}