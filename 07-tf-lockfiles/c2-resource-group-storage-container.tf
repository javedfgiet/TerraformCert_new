resource "azurerm_resource_group" "myrg-1" {
  name = "myrg-1"
  location = "East US"
}

resource "random_string" "myrandom" {
  length = 6
  special = false
  upper = false
}


resource "azurerm_storage_account" "mysa" {
  name                     = "smysa${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.myrg-1.name
  location                 = azurerm_resource_group.myrg-1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}