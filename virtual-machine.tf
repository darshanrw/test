resource "azurerm_virtual_machine" "testvm" {
  name                = var.vmname
  resource_group_name = azurerm_resource_group.testrg.name
  location            = var.location
  size                = "Standard_B1"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.testnic.id,
  ]
  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile{
     computer_name = var.vmname
     admin_username = "azureuser"
     admin_password = var.admin_password
   }

  os_profile_linux_config{
     disable_password_authentication = false
   }
}