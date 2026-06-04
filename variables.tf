variable "resource_group_name" {
  type    = string
  default = "rg-test"
}

variable "location" {
  type    = string
  default = "Korea Central"
}

variable "db_admin_login" {
  type = string
}

variable "db_admin_password" {
  type      = string
  sensitive = true
}
