terraform {
    # backend "azurerm" {
    #     resource_group_name = "CI_DOIB17_Common_RG"
    #     storage_account_name = "doib17tfstg"
    #     container_name = "appbackendcontainer"
    #     key = "terraform.tfstate"
   # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "dd652dae-3455-4999-8da8-e65662c036aa"
}
