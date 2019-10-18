variable "customers" {
  description = "Fictious map describing infrastructure to deploy in each Azure region"
  type        = map(string)
  default = {
    customer1 = "centralus"
    customer2 = "westus"
    customer3 = "eastasia"
  }
}

variable "dns_prefix" {
  description = "Prefix to use for DNS name assigned to container instance"
  default     = "aci"
}