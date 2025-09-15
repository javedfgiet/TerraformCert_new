resource "azurerm_resource_group" "myrg" {
  name = "myrg-1"
  location = "East US"
}

resource "random_string" "myrandom" {
  length = 6
  upper = false
  special = false
}