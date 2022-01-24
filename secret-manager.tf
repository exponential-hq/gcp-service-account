resource "google_secret_manager_secret" "key" {
  count = var.service_account_key ? 1 : 0

  secret_id = "service-account--${var.gcp_project_id}--${var.service_account_id}"

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "key" {
  count = var.service_account_key ? 1 : 0

  secret      = google_secret_manager_secret.key[0].id
  secret_data = base64decode(google_service_account_key.key[0].private_key)
}