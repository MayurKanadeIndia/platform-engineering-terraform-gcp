terraform {
  backend "gcs" {
    bucket = "platform-terraform-state-1031077403472"
    prefix = "env/dev"
  }
}
