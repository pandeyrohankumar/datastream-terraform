
resource "google_compute_instance" "primary_instance" {
  count        = var.primary_count
  name         = "primary-instance-${count.index + 1}"
  machine_type = "n1-standard-1"
  zone         = var.region
  tags         = ["http-server", "https-server"]

  network_interface {
    network = "default"

    access_config {
      # Ephemeral IP
    }
  }

  # Add your primary instance configurations here
}
