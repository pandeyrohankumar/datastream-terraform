variable "project" {
  description = "The name of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region to deploy the Datastream connection profile"
  type        = string
}

variable "instance_ip_address" {
  description = "The private IP address of the primary PostgreSQL instance"
  type        = string
}
