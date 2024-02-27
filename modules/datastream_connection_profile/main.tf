resource "google_datastream_connection_profile" "datastream_connection_profile" {
  display_name          = "postgres-datastream-profile"
  location              = var.region
  connection_profile_id = "postgres-datastream-profile"

  postgresql_profile {
    hostname = var.instance_ip_address
    port     = 5432
    username = "postgres"
    # Other PostgreSQL connection details can be added here
  }
}