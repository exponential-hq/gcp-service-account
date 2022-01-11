variable "gcp_project_id" {
  description = "ID of the project to use for the GCP provider"
  type        = string
}

variable "gcp_region" {
  description = "Region for the GCP provider"
  type        = string
}

variable "kubernetes_namespace" {
  description = "Namespace in which this service account will be used"
  type        = string
  default     = null
}

variable "kubernetes_service_account" {
  description = "Kubernetes service account that will access this GCP service account"
  type        = string
  default     = null
}
variable "service_account_description" {
  description = "Description to give the service account"
  type        = string
  default     = null
}

variable "service_account_display_name" {
  description = "Display name to give the service account"
  type        = string
}

variable "service_account_id" {
  description = "ID to give the service account"
  type        = string
}

variable "service_account_key_type" {
  description = "Type of key to generate for the service account"
  type        = string
  default     = "TYPE_X509_PEM_FILE"
}

variable "store_key_in_secret_manager" {
  description = "Whether to store the service account key in Secret Manager"
  type        = bool
  default     = true
}
