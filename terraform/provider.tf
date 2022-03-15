// Configure the Google Cloud provider
provider "google" {
  credentials = file("/home/hass/Documents/keys/gcp/om30/devops-340214-0a05fdbf885d.json")
  project     = var.project_id
  region      = var.region
}