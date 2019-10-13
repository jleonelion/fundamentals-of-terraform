variable "location" {
  description = "Name of the Azure region to create resources in"
  default     = "centralus"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to put the storage account in"
  default     = "tfstate-rg"
  type        = string
}

variable "container_name" {
  description = "Name to use in the name of the storage account"
  default     = "tfstate"
  type        = string
}

variable "storage_prefix" {
  description = "Name to use in the name of the storage account"
  default     = "tfstate"
  type        = string
}

