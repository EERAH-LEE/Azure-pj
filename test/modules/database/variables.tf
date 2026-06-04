variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "server_name" {
  type    = string
  default = "mysql-prod-db"
}

variable "mysql_version" {
  type    = string
  default = "8.0.21"
}

variable "admin_login" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "sku_name" {
  type    = string
  default = "B_Standard_B1ms"
}

variable "storage_size_gb" {
  type    = number
  default = 32
}

variable "db_subnet_id" {
  type = string
}
