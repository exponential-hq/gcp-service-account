terraform {
  backend "gcs" {}
  required_version = "> 1.0.0"
}
provider "gcp" {
  region  = var.gcp_region
  project = var.gcp_project_id
}