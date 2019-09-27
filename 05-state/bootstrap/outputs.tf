output "access_key"{
  value = azurerm_storage_account.tstatestorage.primary_access_key
}

output "storage_account_name"{
  value = azurerm_storage_account.tstatestorage.name
}

output "container_name"{
  value = azurerm_storage_container.tstatecontainer.name
}
