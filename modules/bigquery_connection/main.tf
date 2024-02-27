resource "google_sql_database_instance" "database_instance" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region

  # Additional configurations for the database instance can be added here
}