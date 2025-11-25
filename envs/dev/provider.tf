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
  subscription_id = "e5efa2cd-02a5-4c7b-be99-6e2ae6d5feac"
}
