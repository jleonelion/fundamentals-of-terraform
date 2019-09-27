variable "resource_group_name" {
  description = "Name of the resource group"
  type = string
}

variable "location" {
  description = "Region to create resource group in"
  type = string
  default = "westus2"
}

variable "tags" {
  description = "Tags to add to rg"
  type = map(string)
  default = {}
}