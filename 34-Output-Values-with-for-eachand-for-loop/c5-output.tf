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

# #2. Output Values for Virtual Network Resource
# output "virtual_network_name" {
#   description = "Virtual Network"
#   depends_on  = [azurerm_virtual_network.myvnet]
#   value       = azurerm_virtual_network.myvnet[*].name
#  # sensitive = true
# }

#Output - For Loop One Input and List Output with VNET Name
output "virtual_network_name_list_one_input" {
  description = "virtual_network_name_list_one_input"
  value = [for vnet in azurerm_virtual_network.myvnet: vnet.name]
}
output "virtual_network_name_list_two_input" {
  description = "Virtual Network : virtual_network_name_list_two_input"
  value = [for i,vnet in azurerm_virtual_network.myvnet : i]
}

output "virtual_network_name_map_one_input" {
  description = "Virtual Network- For Loop One Input and MapOutput"
  value = {for vnet in azurerm_virtual_network.myvnet: vnet.id=>vnet.name}
  
}

output "virtual_network_name_map_two_input" {
  description = "Virtual Network- For Loop 2 Input and MapOutput"
  value = {for env,vnet in azurerm_virtual_network.myvnet: env=>vnet.name}
  
}

output "virtual_network_name_keys_function" {
  description = "Virtual Network- Keys function"
  value = keys({for env,vnet in azurerm_virtual_network.myvnet: env=>vnet.name})
  
}

output "virtual_network_name_value_function" {
  description = "Virtual Network- Values Function"
  value = values({for env,vnet in azurerm_virtual_network.myvnet: env=>vnet.name})
  
}