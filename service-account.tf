resource "google_service_account" "sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
  description  = var.service_account_description
}

resource "google_service_account_iam_member" "main" {
  count              = var.kubernetes_namespace != null ? 1 : 0
  service_account_id = google_service_account.sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${var.gcp_project_id}.svc.id.goog[${var.kubernetes_namespace}/${var.kubernetes_service_account}]"
}

resource "google_project_iam_member" "workload_identity_sa_bindings" {
  for_each = toset(var.service_account_roles)
  role     = each.value
  member   = "serviceAccount:${google_service_account.sa.email}"
  project  = var.gcp_project_id
}
resource "google_service_account_key" "key" {
  count              = var.service_account_key ? 1 : 0
  service_account_id = google_service_account.sa.name
  public_key_type    = var.service_account_key_type
}

locals {
  short_service_account_name = element(split("/", google_service_account.sa.id), length(split("/", google_service_account.sa.id)) - 1)
}

### Assumable by other Service Accounts
resource "google_service_account_iam_member" "assumer" {
  for_each = toset(var.assumer_identities)

  service_account_id = google_service_account.sa.name
  role               = "roles/iam.serviceAccountTokenCreator"
  member             = "serviceAccount:${each.value}"
}