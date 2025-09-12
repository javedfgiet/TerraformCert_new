resource "azurerm_resource_group" "myrg-1" {
  name = "myrg-1"
  location = "East US"
}

resource "random_string" "myrandom" {
  length = 6
  special = false
  upper = false
}