# gcp-service-account

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.0.0 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.42.0 |
| <a name="provider_google.impersonation"></a> [google.impersonation](#provider\_google.impersonation) | 4.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.workload_identity_sa_bindings](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_secret_manager_secret.key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_member.assumer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |
| [google_service_account_iam_member.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |
| [google_service_account_iam_member.principle_acccess](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |
| [google_service_account_key.key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_key) | resource |
| [google_service_account_access_token.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account_access_token) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assumer_identities"></a> [assumer\_identities](#input\_assumer\_identities) | Emails of service accounts that can assume this service account | `list(string)` | `[]` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | ID of the project to use for the GCP provider | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region for the GCP provider | `string` | n/a | yes |
| <a name="input_principals_access"></a> [principals\_access](#input\_principals\_access) | Map of principles and their roles to give access to the service account | `map(any)` | `{}` | no |
| <a name="input_service_account_description"></a> [service\_account\_description](#input\_service\_account\_description) | Description to give the service account | `string` | `null` | no |
| <a name="input_service_account_display_name"></a> [service\_account\_display\_name](#input\_service\_account\_display\_name) | Display name to give the service account | `string` | n/a | yes |
| <a name="input_service_account_id"></a> [service\_account\_id](#input\_service\_account\_id) | ID to give the service account | `string` | n/a | yes |
| <a name="input_service_account_key"></a> [service\_account\_key](#input\_service\_account\_key) | Whether to create a key for this service account | `bool` | `false` | no |
| <a name="input_service_account_key_type"></a> [service\_account\_key\_type](#input\_service\_account\_key\_type) | Type of key to generate for the service account | `string` | `"TYPE_X509_PEM_FILE"` | no |
| <a name="input_service_account_roles"></a> [service\_account\_roles](#input\_service\_account\_roles) | Roles to assign the service account | `list(string)` | <pre>[<br>  "roles/secretmanager.secretAccessor"<br>]</pre> | no |
| <a name="input_terraform_service_account"></a> [terraform\_service\_account](#input\_terraform\_service\_account) | Name of the service account to assume to run Terraform | `string` | n/a | yes |
| <a name="input_workload_identity_users"></a> [workload\_identity\_users](#input\_workload\_identity\_users) | A list of workload identity users | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account_id"></a> [service\_account\_id](#output\_service\_account\_id) | n/a |
| <a name="output_service_account_name"></a> [service\_account\_name](#output\_service\_account\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
