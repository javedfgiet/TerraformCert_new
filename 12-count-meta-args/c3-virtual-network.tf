resource "azurerm_virtual_network" "myvnet" {
  name = "myvnet"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  address_space = ["10.0.0.0/28"]
}

resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet"
    virtual_network_name = azurerm_virtual_network.myvnet.name
    resource_group_name = azurerm_resource_group.myrg.name
    address_prefixes = ["10.0.0.0/28"]
  
}

resource "azurerm_public_ip" "mypublicip" {
    count = 2
    name = "mypublicip-${count.index}"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    allocation_method = "Static"
    domain_name_label = "app1-vm-${count.index}-${random_string.myrandom.id}"
  
}

resource "azurerm_network_interface" "myvmninc" {
    count = 2
    name = "myvmnic-${count.index}"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "intrnal"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = element(azurerm_public_ip.mypublicip[*].id,count.index)
    }
  
}