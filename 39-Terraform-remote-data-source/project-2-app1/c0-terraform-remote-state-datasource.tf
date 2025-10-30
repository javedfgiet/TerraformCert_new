data "terraform_remote_state" "project1" {
  backend = "azurerm"
  config = {
     resource_group_name = "tf-storage-rg"
    storage_account_name = "terraformstatestella"
    container_name = "tfstatefiles"
    key = "network-terraform.tfstate"
  }
}


#Resource group name

#Resource Group Lication

#Network interface ID