resource "azurerm_resource_group" "testrg" {
    name     = var.resourcegroupname
    location = var.location
}