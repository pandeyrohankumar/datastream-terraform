output "primary_instance_names" {
  value = google_compute_instance.primary[*].name
}
