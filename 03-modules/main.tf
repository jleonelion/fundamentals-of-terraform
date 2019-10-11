module "rg" {
  source = "./modules/rg"

  name = "terraform-modules"
  customerID = "CUS-123456"
  location = "westus2"
  environment = "development"
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
}

module "linuxservers" {
  source  = "Azure/compute/azurerm"
  version = "1.3.0"

  location            = module.rg.resource_group.location
  resource_group_name = module.rg.resource_group.name

  vm_os_simple   = "UbuntuServer"
  vnet_subnet_id = module.network.vnet_subnets[0]
  public_ip_dns = ["modules${random_id.randomId.hex}"]
}

