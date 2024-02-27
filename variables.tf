variable "project" {
  description = "The name of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region to deploy the resources"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account key file"
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

variable "primary_count" {
  description = "The number of primary VM instances"
  type        = number
}