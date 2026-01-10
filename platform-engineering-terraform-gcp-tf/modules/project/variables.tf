variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "folder_id" {
  description = "Optional folder ID"
  type        = string
  default     = null
}

