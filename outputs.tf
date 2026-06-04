output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "aks_subnet_id" {
  value = module.network.aks_subnet_id
}

output "db_subnet_id" {
  value = module.network.db_subnet_id
}

output "aks_cluster_id" {
  value = module.aks.cluster_id
}

output "aks_cluster_name" {
  value = module.aks.cluster_name
}

output "db_server_name" {
  value = module.database.server_name
}

output "db_fqdn" {
  value = module.database.fqdn
}
