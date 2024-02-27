variable "project" {
  description = "The name of the Google Cloud project"
  type        = string
}

variable "region" {
  description = "The region to deploy the instances"
  type        = string
}

variable "primary_count" {
  description = "The number of primary VM instances"
  type        = number
}

variable "credentials_file" {
  description = "Path to the service account key file"
  type        = string
}
