resource "azurerm_virtual_network" "vnet"{
    name                = var.vnetname
    address_space       = ["10.0.0.0/16"]
    location            = var.location
    resource_group_name = azurerm_resource_group.testrg.name
}

resource "azurerm_subnet" "testsubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.testrg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}