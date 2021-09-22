resource "azurerm_virtual_machine" "testvm" {
  name                = var.vmname
  resource_group_name = azurerm_resource_group.testrg.name
  location            = var.location
  vm_size             = "Standard_B1s"
  network_interface_ids = [
    azurerm_network_interface.testnic.id,
  ]

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
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