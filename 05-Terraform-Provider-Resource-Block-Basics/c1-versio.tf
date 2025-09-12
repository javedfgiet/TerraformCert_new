terraform{
    required_version = "~>1.13.1"
    required_providers {
      azurerm={
        source = "hashicorp/azurerm"
        version = "4.43.0"
      }
    }
}
provider "azurerm" {
    subscription_id = "0d674ba3-19cf-45f2-af5e-35d614883da1"
features {}
}