terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0.0"
    }
  }
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = "7f2d10e5-77f7-4aec-bb6c-7dadd2b41b90"
}

resource "azuread_user" "testusers" {
  user_principal_name = "akmrx@gmail.com"
  display_name        = "akmrx"
}