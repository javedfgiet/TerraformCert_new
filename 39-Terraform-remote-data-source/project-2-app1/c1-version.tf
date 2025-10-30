terraform {
  required_version = "~>1.13.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tf-storage-rg"
    storage_account_name = "terraformstatestella"
    container_name = "tfstatefiles"
    key = "app1-terraform.tfstate"
  }
}

# Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false
}

provider "azurerm" {
  subscription_id = "0d674ba3-19cf-45f2-af5e-35d614883da1"
  features {
  }
}
