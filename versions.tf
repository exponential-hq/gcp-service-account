terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.30.0"
    }
  }
  required_version = ">= 1.0.0"
}