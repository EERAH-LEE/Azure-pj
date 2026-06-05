locals {
  cluster_name   = "aks-prod-cluster"
  dns_prefix     = "prodaks"
  node_count     = 2
  vm_size        = "Standard_D2s_v5"
  service_cidr   = "172.16.0.0/16"
  dns_service_ip = "172.16.0.10"
  environment    = "Production"
}
