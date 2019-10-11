provider "azurerm" {
  version = ">= 1.1.0"
}

resource "azurerm_resource_group" "rg" {
  count = (contains(local.valid_envs, var.environment) == true) ? 1 : 0

  name     = "${var.name}-rg"
  location = var.location
  tags = merge(
    {
      Environment = var.environment,
      CustomerID  = var.customerID
    },
    var.tags
  )
}