 resource "azurerm_public_ip" "test_ip" {
  name                    = "test_ip"
  location                = var.location
  resource_group_name     = azurerm_resource_group.testrg.name
  allocation_method       = "Dynamic"
  }