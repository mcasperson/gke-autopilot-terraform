terraform {
  backend "gcs" {
    bucket  = "octopus-gke-test"
    prefix  = "terraform/dev/state"
  }
}


resource "google_container_cluster" "primary" {
  name               = "octopus-gke-test"
  enable_autopilot   = true
}
