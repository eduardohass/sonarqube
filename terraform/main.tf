resource "google_compute_instance" "sonarqube" {
  name                      = var.compute_instance_name
  machine_type              = var.compute_instance_machine_type
  zone                      = var.compute_instance_zone
  project                   = var.project_id
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }

  scheduling {
    automatic_restart = false
    preemptible       = true
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_user}:${var.gce_ssh_pub_key}"
  }

  tags = ["preemptible", "http-server", "https-server", "sonarqube"]
}