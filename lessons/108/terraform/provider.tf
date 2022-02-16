provider "google" {
  project = "devops-v4"
  region  = "us-central1"
}


# https://www.terraform.io/language/settings/backends/gcs
# Warning! It is highly recommended that you enable Object Versioning on the GCS bucket to allow for state recovery in the case of accidental deletions and human error.

# terraform {
#   backend "gcs" {
#     bucket = "antonputra-tf-state-staging"
#     prefix = "terraform/state"
#   }
# }
