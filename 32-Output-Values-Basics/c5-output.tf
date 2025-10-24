#1. Output value for resource group
output "resource_group_id" {
  description = "Resource group Id"
  depends_on  = [azurerm_resource_group.myrg]
  value       = azurerm_resource_group.myrg.id
}
output "resource_group_name" {
  description = "Resouce Group Name"
  value       = azurerm_resource_group.myrg.name
}

#2. Output Values for Virtual Network Resource
output "virtual_network_name" {
  description = "Virtual Network"
  depends_on  = [azurerm_virtual_network.myvnet]
  value       = azurerm_virtual_network.myvnet.name
  sensitive = true
}
