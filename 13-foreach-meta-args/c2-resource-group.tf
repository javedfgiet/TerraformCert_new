# resource "azurerm_resource_group" "myrg" {
#     for_each = {
#         dc1apps="eastus"
#         dc2apps="eastus2"
#         dc3apps="westus"
#     }
#     name = "${each.key}-rg"
#     location = each.value
# }

resource "azurerm_resource_group" "myrg" {
    for_each = toset(["eastus","eastus2","westus"])
    name = "myrg-${each.value}"
    location = each.key
  
}