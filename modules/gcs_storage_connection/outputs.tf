output "primary_instance_name" {
  value = google_sql_database_instance.database_instance.name
}

output "primary_ip_address" {
  value = google_sql_database_instance.database_instance.ip_address
}

output "standby_instance_name" {
  value = google_sql_database_instance.database_instance.replica_names[0] # Assuming there's only one replica
}

output "standby_ip_address" {
  value = google_sql_database_instance.database_instance.replica_ip_addresses[0]
}