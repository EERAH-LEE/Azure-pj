resource "azurerm_kubernetes_cluster" "aks" {
  name                = local.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = local.dns_prefix

  default_node_pool {
    name           = "default"
    node_count     = local.node_count
    vm_size        = local.vm_size
    vnet_subnet_id = var.aks_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = local.service_cidr
    dns_service_ip = local.dns_service_ip
  }

  tags = {
    Environment = local.environment
  }
}
