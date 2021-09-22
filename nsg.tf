resource "azurerm_network_security_group" "testnsg" {
  name                = var.nsgname
  location            = var.location
  resource_group_name = azurerm_resource_group.testrg.name

  security_rule {
    name                       = "testrule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}