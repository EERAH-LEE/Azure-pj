variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "cluster_name" {
  type    = string
  default = "aks-prod-cluster"
}

variable "dns_prefix" {
  type    = string
  default = "prodaks"
}

variable "node_count" {
  type    = number
  default = 2
}

variable "vm_size" {
  type    = string
  default = "Standard_D2s_v5"
}

variable "aks_subnet_id" {
  type = string
}

variable "service_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "dns_service_ip" {
  type    = string
  default = "172.16.0.10"
}

variable "environment" {
  type    = string
  default = "Production"
}
