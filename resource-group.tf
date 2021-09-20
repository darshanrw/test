resource "azurerm_resource_group" "testrg"{
    Name     = var.resourcegroupname
    location = var.location
}