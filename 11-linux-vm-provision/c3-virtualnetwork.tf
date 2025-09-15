resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "mypublicip" {
    name = "mypip"
    allocation_method = "Static"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    domain_name_label = "app1-vm-${random_string.myrandom.id}"
    tags = {
      "dev":"env"
    }
}

resource "azurerm_network_interface" "vmnic" {
    name = "vmnic"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet.id
      public_ip_address_id = azurerm_public_ip.mypublicip.id
      private_ip_address_allocation = "Dynamic"
    }
}