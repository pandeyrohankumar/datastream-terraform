variable "project" {
  description = "The name of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region to deploy the replication"
  type        = string
}

variable "primary_instance_name" {
  description = "The name of the primary PostgreSQL instance"
  type        = string
}

variable "standby_instance_name" {
  description = "The name of the standby PostgreSQL instance"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account key file"
  type        = string
}
