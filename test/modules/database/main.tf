resource "azurerm_mysql_flexible_server" "db" {
  name                = local.server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = local.mysql_version

  administrator_login    = var.admin_login
  administrator_password = var.admin_password

  sku_name = local.sku_name

  storage {
    size_gb           = local.storage_size_gb
    auto_grow_enabled = false
  }

  delegated_subnet_id = var.db_subnet_id
}
