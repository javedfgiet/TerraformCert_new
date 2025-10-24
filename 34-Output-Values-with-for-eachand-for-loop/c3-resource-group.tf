resource "azurerm_resource_group" "myrg" {
  name     = "${var.business_unit}-${var.resource_group_name}-rg"
  location = var.resource_group_location
}