terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "platform-seed-project"
  region  = "us-central1"
}

module "dev_project" {
  source = "../../modules/project"

  project_id      = "realworld-mk-platform-dev-001"
  project_name    = "Platform Dev Environment"
  billing_account = var.billing_account
  folder_id       = var.folder_id
}
