output "server_id" {
  value = azurerm_mysql_flexible_server.db.id
}

output "server_name" {
  value = azurerm_mysql_flexible_server.db.name
}

output "fqdn" {
  value = azurerm_mysql_flexible_server.db.fqdn
}
