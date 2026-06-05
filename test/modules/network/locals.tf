locals {
  vnet_name          = "vnet-prod"
  vnet_address_space = ["10.0.0.0/16"]
  aks_subnet_name    = "snet-aks"
  aks_subnet_prefix  = "10.0.1.0/24"
  db_subnet_name     = "snet-db"
  db_subnet_prefix   = "10.0.2.0/24"
}
