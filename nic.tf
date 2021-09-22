resource "azurerm_network_interface" "testnic" {
  name                = var.nicname
  location            = var.location
  resource_group_name = azurerm_resource_group.testrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.testsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.test_ip.id
  }
}

resource "azurerm_network_interface_security_group_association" "nsgassociate" {
  network_interface_id      = azurerm_network_interface.testnic.id
  network_security_group_id = azurerm_network_security_group.testnsg.id
}