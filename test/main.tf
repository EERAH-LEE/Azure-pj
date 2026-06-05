resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = local.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  aks_subnet_id       = module.network.aks_subnet_id
}

module "database" {
  source              = "./modules/database"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  db_subnet_id        = module.network.db_subnet_id
  admin_login         = var.db_admin_login
  admin_password      = var.db_admin_password
}

