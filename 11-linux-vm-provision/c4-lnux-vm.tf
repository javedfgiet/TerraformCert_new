resource "azurerm_linux_virtual_machine" "myvm" {
    name = "mylinuxvm-1"
    computer_name = "devlinuxvm-1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    size = "Standard_DS1_V2"
    admin_username = "Adminuser"
    network_interface_ids = [azurerm_network_interface.vmnic.id]

   admin_ssh_key {
     username = "Adminuser"
     public_key = file("${path.module}/ssh-keys/id_rsa.pub")
   }

   os_disk {
     name = "osdisk"
     caching = "ReadWrite"
     storage_account_type = "Standard_LRS"
   }
  source_image_reference {
    publisher = "Redhat"
    offer = "RHEL"
    sku = "83-gen2"
    version = "latest"
  }
}