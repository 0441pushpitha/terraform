  provider "google" {
  project = "107024447502780705397"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "my_vm" {
  name         = "pushpitha-vm-01"   # 👈 VM Name goes here
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}

