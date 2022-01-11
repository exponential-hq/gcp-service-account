data "google_iam_policy" "workload_identity" {
  count = var.kubernetes_service_account != null ? 1 : 0
  binding {
    role = "roles/iam.workloadIdentityUser"

    members = [
      "serviceAccount:${var.gcp_project_id}.svc.id.goog[${var.kubernetes_namespace}/${var.kubernetes_service_account}]",
    ]
  }
}

resource "google_service_account_iam_policy" "workload_identity" {
  count              = var.kubernetes_service_account != null ? 1 : 0
  service_account_id = google_service_account.sa.name
  policy_data        = data.google_iam_policy.workload_identity[count.index].policy_data
}

data "google_iam_policy" "secret_accessor" {
  count = var.kubernetes_service_account != null ? 1 : 0
  binding {
    role = "roles/secretmanager.secretAccessor"

    members = [
      "serviceAccount:${local.short_service_account_name}",
    ]
  }
}

resource "google_project_iam_policy" "secret_accessor" {
  count       = var.kubernetes_service_account != null ? 1 : 0
  project     = var.gcp_project_id
  policy_data = data.google_iam_policy.secret_accessor[count.index].policy_data
}