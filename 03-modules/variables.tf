variable "tags" {
  type = "map"
  default = {
    environment = "dev"
    costcenter  = "it"
  }
}

variable "resource_group_name" {
  description = "Name of resource group"
  default     = "terraform-modules-rg"
}