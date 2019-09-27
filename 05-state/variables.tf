variable "storage_account_name" {
  description = "Name of the Azure storage account to put Terraform state file in"
}

variable "container_name" {
  description = "Name of the Azure storage container to put Terraform state file in"
}

variable "key" {
  description = "Name of the remotely bakced file that will hold Terraform state"
  default = "terraform.tfstate"
}
