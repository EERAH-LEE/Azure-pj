variable "db_admin_login" {
  type = string
}

variable "db_admin_password" {
  type      = string
  sensitive = true
}
