resource "google_service_account" "sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
  description  = var.service_account_description
}

resource "google_service_account_key" "key" {
  service_account_id = google_service_account.sa.name
  public_key_type    = var.service_account_key_type
}

locals {
  short_service_account_name = element(split("/", google_service_account.sa.id), length(split("/", google_service_account.sa.id)) - 1)
}