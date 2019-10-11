variable "name" {
  description = "Short name of the resource group (-rg will be automatically appended!)"
  type = string
}

variable "environment" {
  description = "Promotional environment the resource group is associated with (dev, qa, stage, prod are only acceptable values)"
  type = string
}

variable "customerID" {
  description = "ID of the customer that the resource group is being deployed for"
  type = string
}


variable "location" {
  description = "(Optional) Region to create resource group in"
  type = string
  default = "westus2"
}

variable "tags" {
  description = "(Optional) Additional tags to add to rg"
  type = map(string)
  default = {}
}