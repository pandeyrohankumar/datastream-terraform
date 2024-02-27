output "datastream_connection_profile_id" {
  value = module.datastream_connection_profile.datastream_connection_profile_id
}

output "primary_instance_name" {
  value = module.database_instance.primary_instance_name
}

output "primary_ip_address" {
  value = module.database_instance.primary_ip_address
}

output "replication_commands_executed" {
  value = module.replication.replication_commands_executed
}

output "reverse_proxy_ip_address" {
  value = module.reverse_proxy.reverse_proxy_ip_address
}

output "primary_instance_names" {
  value = module.instances.primary_instance_names
}
