terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "ba19e6e0-e664-445e-b566-2a35e4ae7046"
}
