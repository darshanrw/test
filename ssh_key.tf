resource "azurerm_ssh_public_key" "ssh_key" {
  name                = "SSH_KEY"
  resource_group_name = azurerm_resource_group.testrg.name
  location            = var.location
  public_key          = file("~/.ssh/id_rsa.pub")
}