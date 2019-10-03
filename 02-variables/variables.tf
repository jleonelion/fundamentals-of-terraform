variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
}

variable "location" {
  description = "Name of the Azure region to create resources in"
  default     = "westus2"
  type        = string
}

#other variable types
variable "a_number" {
  description = "A variable of type number"
  default     = 2
  type        = number
}

variable "a_bool" {
  description = "A variable of type bool"
  default     = true
  type        = bool
}

variable "a_list" {
  description = "A variable that is a list of string"
  type        = list(string)
  default     = ["westus2", "westus","eastus"]
}

variable "a_set" {
  description = "A variable that is a set of string"
  type        = set(string)
  default     = ["westus2", "westus"]
}

variable "an_object" {
  description = "An object example"
  type = object({
    port     = number
    protocol = string
  })
  default = {
    port     = 80
    protocol = "http"
  }
}


