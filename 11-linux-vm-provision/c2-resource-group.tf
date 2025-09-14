resource "azurerm_resource_group" "myrg" {
    name = "myrg"
    location = "East US"
}

resource "random_string" "myrandom" {
    length = 16
    special = false
    upper = false
}