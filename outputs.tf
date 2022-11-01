output "service_account_id" {
  value = google_service_account.sa.id
}

output "service_account_name" {
  value = local.short_service_account_name
}
