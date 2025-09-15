terraform {
    required_version = "~>1.13.1"
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.43.0"
    }
    random={
        source = "hashicorp/random"
        version = "3.7.2"
    }
  }
}

provider "azurerm" {
    subscription_id = "XXXXXXXXXXXXXXXXXXXXXXXXX"
  features {}
}

provider "random" {
  
}