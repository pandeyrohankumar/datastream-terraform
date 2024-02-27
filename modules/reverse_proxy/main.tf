

resource "google_compute_instance" "reverse_proxy" {
  name         = "reverse-proxy-instance"
  machine_type = "n1-standard-1"
  zone         = var.region
  tags         = ["http-server", "https-server"]

  network_interface {
    network = "default"

    access_config {
      # Ephemeral IP
    }
  }

  # Add your reverse proxy configurations here
}
