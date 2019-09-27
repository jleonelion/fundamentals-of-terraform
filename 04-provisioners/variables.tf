variable "port" {
  description = "Port to listent to http on"
  type = number
  default = 80
}

variable "location" {
  description = "Azure region to create resources in"
  type = string
  default = "eastus"
}

variable "vm_admin_username" {
  description = "User name to log into VM"
  default = "azureadmin"
  type        = string
}

variable "vm_admin_password" {
  description = "Password to log into VM"
  default = "Password1234!"
  type        = string
}
