resource "azurerm_linux_virtual_machine" "myvm" {
  count = 2
    name = "mylinuxvm-${count.index}"
    computer_name = "devlinuxvm-1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    size = "Standard_DS1_V2"
    admin_username = "Adminuser"
    network_interface_ids = [element(azurerm_network_interface.myvmninc[*].id,count.index)]

   admin_ssh_key {
     username = "Adminuser"
     public_key = file("${path.module}/ssh-keys/id_rsa.pub")
   }

   os_disk {
     name = "osdisk-${count.index}"
     caching = "ReadWrite"
     storage_account_type = "Standard_LRS"
   }
  source_image_reference {
    publisher = "Redhat"
    offer = "RHEL"
    sku = "83-gen2"
    version = "latest"
  }
  #custom_data = filebase64("${path.module}/app-scripts/app1-cloud-init.txt")
}