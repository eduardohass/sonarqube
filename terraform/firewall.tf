resource "google_compute_firewall" "allow_ssh_office" {
  name    = "allow-ssh-office"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [var.ingress_ip]
  target_tags   = ["sonarqube"]
}

resource "google_compute_firewall" "allow_port_sonarqube" {
  name    = "allow-port-sonarqube"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["9000"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["sonarqube"]
}

resource "google_compute_firewall" "allow_port_portainer" {
  name    = "allow-port-portainer"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["2375","8000","9443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["sonarqube"]
}