# Define the variables for database username and password
variable "db_username" {
  description = "The username for PostgreSQL"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for PostgreSQL"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "The password for PostgreSQL"
  type        = string
  sensitive   = true
}

