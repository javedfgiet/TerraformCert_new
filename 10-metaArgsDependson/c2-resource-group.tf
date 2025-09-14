resource "azurerm_resource_group" "myrg" {
  name = "myrg"
  location = "central us"
}
resource "random_string" "myrandon" {
  length = 16
  upper = false
  special = false
  numeric = false
}