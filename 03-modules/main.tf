# Configure the provider
provider "azurerm" {
  version = "~> 1.0"
}

module "rg" {
  source = "./modules/rg"

  resource_group_name = "modules-rg"
  tags                = var.tags
}

resource "random_id" "randomId" {
  keepers = {
    resource_group = module.rg.resource_group_id
  }
  byte_length = 8
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "~> 1.1.1"

  location            = module.rg.resource_group.location
  resource_group_name = module.rg.resource_group.name

  allow_ssh_traffic   = "true"
  tags                = var.tags
}

module "linuxservers" {
  source  = "Azure/compute/azurerm"
  version = "1.3.0"

  location            = module.rg.resource_group.location
  resource_group_name = module.rg.resource_group.name

  vm_os_simple   = "UbuntuServer"
  vnet_subnet_id = module.network.vnet_subnets[0]
  public_ip_dns = ["modules${random_id.randomId.hex}"]
  tags           = var.tags
}

