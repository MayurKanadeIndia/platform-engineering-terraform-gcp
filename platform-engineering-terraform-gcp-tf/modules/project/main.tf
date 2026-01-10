resource "google_project" "this" {
  project_id      = var.project_id
  name            = var.project_name
  billing_account = var.billing_account
  
  folder_id = var.folder_id != null ? var.folder_id : null
}

resource "google_project_service" "core_apis" {
  for_each = toset([
    "compute.googleapis.com",
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com"
  ])

  project = google_project.this.project_id
  service = each.value

  disable_on_destroy = false
}
