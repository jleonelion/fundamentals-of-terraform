provider "azurerm" {
  version = "~> 1.0"
}

provider "random" {
  version = "~> 2.2"
}

# Generate random text for a unique storage account name
resource "random_id" "randomId" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = azurerm_resource_group.rg.name
  }
  byte_length = 8
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Storage account that will hold Terraform state
resource "azurerm_storage_account" "tstatestorage" {
  name                     = "${var.storage_prefix}${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Storage container that will hold Terraform state for dev environment
resource "azurerm_storage_container" "tstatecontainer" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.tstatestorage.name
}
