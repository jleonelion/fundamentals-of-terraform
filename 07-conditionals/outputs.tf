output "public_ips" {
  value = [for c in azurerm_container_group.containergroup : c.fqdn]
}