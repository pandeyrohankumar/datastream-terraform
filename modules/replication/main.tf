resource "null_resource" "replication_setup" {
  triggers = {
    primary_instance_name = var.primary_instance_name
    standby_instance_name = var.standby_instance_name
  }

  provisioner "local-exec" {
    command = <<EOT
      # Execute PostgreSQL replication setup commands here
      # Example:
      psql -h ${google_sql_database_instance.primary.ip_address} -U postgres -c "CREATE ROLE replication_user REPLICATION LOGIN CONNECTION LIMIT 1 ENCRYPTED PASSWORD 'password';"
      psql -h ${google_sql_database_instance.standby.ip_address} -U postgres -c "SELECT pg_create_physical_replication_slot('replication_slot');"
      psql -h ${google_sql_database_instance.standby.ip_address} -U postgres -c "SELECT pg_start_backup('base_backup');"
      pg_basebackup -h ${google_sql_database_instance.primary.ip_address} -D /var/lib/postgresql/data -U replication_user -v -P --wal-method=stream
      psql -h ${google_sql_database_instance.standby.ip_address} -U postgres -c "SELECT pg_stop_backup();"
    EOT
  }
}