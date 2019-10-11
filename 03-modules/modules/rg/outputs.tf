output "resource_group_id" {
  description = "id of the resource group provisioned"
  value = azurerm_resource_group.rg[0].id
}

output "resource_group" {
  description = "id of the resource group provisioned"
  value = azurerm_resource_group.rg[0]
}