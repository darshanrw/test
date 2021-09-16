terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.0.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  features {}
}

provider "azurerm" {
  features {}
}
