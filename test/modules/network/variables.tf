variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type    = string
  default = "vnet-test"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "aks_subnet_name" {
  type    = string
  default = "snet-aks"
}

variable "aks_subnet_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "db_subnet_name" {
  type    = string
  default = "snet-db"
}

variable "db_subnet_prefix" {
  type    = string
  default = "10.0.2.0/24"
}
