resource "azurerm_linux_virtual_machine" "testvm" {
  name                = var.vmname
  resource_group_name = azurerm_resource_group.testrg.name
  location            = var.location
  size                = "Standard_B1"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.testnic.id,
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}