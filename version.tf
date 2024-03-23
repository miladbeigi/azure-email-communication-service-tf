
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "1.12.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
