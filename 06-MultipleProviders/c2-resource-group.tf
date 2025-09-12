resource "azurerm_resource_group" "myrg-1" {
    name = "myrg-1"
    location = "East US"
  
}

resource "azurerm_resource_group" "nyrg-2" {
    name = "myrg-2"
    location = "West US"
    provider = azurerm.provider2-westus
}