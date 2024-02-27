variable "project" {
  description = "The name of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region to deploy the database instance"
  type        = string
}

variable "instance_name" {
  description = "The name of the PostgreSQL instance"
  type        = string
}

variable "database_version" {
  description = "The version of PostgreSQL"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account key file"
  type        = string
}
