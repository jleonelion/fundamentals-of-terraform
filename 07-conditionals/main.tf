provider "azurerm" {
  version = "~> 1.0"
}

resource "random_id" "randomId" {
  keepers = {
    dns_prefix = var.dns_prefix
  }
  byte_length = 8
}

resource "azurerm_resource_group" "rg" {
  for_each = var.customers
  name     = "${each.key}-rg"
  location = each.value
}

resource "azurerm_container_group" "containergroup" {
  for_each = var.customers
  name                = "container"
  resource_group_name = azurerm_resource_group.rg[each.key].name
  location            = azurerm_resource_group.rg[each.key].location
  ip_address_type     = "public"
  dns_name_label      = "${var.dns_prefix}-${random_id.randomId.hex}"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}

resource "azurerm_resource_group" "nocustomersrg" {
  count = length(var.customers) > 0 ? 0 : 1
  name     = "nocustomers-rg"
  location = "eastus"
}

resource "azurerm_container_group" "nocustomerscontainergroup" {
  count = length(var.customers) > 0 ? 0 : 1
  name                = "container"
  resource_group_name = azurerm_resource_group.nocustomersrg[0].name
  location            = azurerm_resource_group.nocustomersrg[0].location
  ip_address_type     = "public"
  dns_name_label      = "${var.dns_prefix}-${random_id.randomId.hex}"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}