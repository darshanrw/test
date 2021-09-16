terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

#resource "azurerm_resource_group" "test" {
 # name     = var.rgname
 # location = var.location
#}

resource "azuread_user" "testusers" {
  user_principal_name = "akmrx@gmail.com"
  display_name        = "akmrx"
}