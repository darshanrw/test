terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0.0"
    }
  }
}

resource "azuread_user" "testusers" {
  user_principal_name = "akmrx@gmail.com"
  display_name        = "akmrx"
}