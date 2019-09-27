# Configure the provider
provider "azurerm" {
  #specify a version
  version = "~> 1.0"
}
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "tf-variables-rg"
  location = var.location
}
# Create virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.name
  resource_group_name = azurerm_resource_group.rg.name
}