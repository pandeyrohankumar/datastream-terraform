output "reverse_proxy_ip_address" {
  value = google_compute_instance.reverse_proxy.network_interface[0].access_config[0].nat_ip
}
