resource "azurerm_resource_group" "myrg" {
  for_each = var.environment
  name     = "${var.business_unit}-${each.key}-${var.resource_group_name}"
  location = var.resource_group_location
}