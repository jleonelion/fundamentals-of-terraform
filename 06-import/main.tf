provider "azurerm" {
  version = "~> 1.0"
}

resource "azurerm_resource_group" "rg" {
  name = "import-rg"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "tf-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}