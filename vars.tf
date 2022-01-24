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

variable "service_account_key" {
  description = "Whether to create a key for this service account"
  type        = bool
  default     = false
}
variable "service_account_key_type" {
  description = "Type of key to generate for the service account"
  type        = string
  default     = "TYPE_X509_PEM_FILE"
}

variable "service_account_roles" {
  description = "Roles to assign the service account"
  type        = list(string)
  default     = ["roles/secretmanager.secretAccessor"]
}

variable "terraform_service_account" {
  description = "Name of the service account to assume to run Terraform"
  type        = string
}