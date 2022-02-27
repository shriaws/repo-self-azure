terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

provider "azurerm" {
    skip_provider_registration = "true"
    features {}
}

# resource "azurerm_resource_group" "rg" {
#   name     = "1-9bd8204b-playground-sandbox"
#   location = "Central US"
# }



resource "azurerm_storage_account" "stg" {
  name                     = "stgtesting1011"
  resource_group_name      =  "1-9bd8204b-playground-sandbox"
  location                 =  "Central US"
  account_tier             = "Standard"
  account_replication_type = "GRS"
   
  tags = {
    environment = "staging"
  }
}

