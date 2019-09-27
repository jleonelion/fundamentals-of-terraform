terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = "~> 1.0"
}

resource "azurerm_resource_group" "rg" {
  name     = "statedemo-rg"
  location = "southcentralus"
}