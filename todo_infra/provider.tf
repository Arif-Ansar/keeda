terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "Arif-rg"
    storage_account_name  = "loka"
    container_name        = "toka"
    key                   = "dev2.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "a87c6699-9b7e-4873-a0c4-8660499ba9ea"
}
