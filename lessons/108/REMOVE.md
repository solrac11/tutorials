- Explain of the permissions that i need to create cluster
gcloud auth application-default login

gcloud alpha storage ls --project devops-v4 --all-versions gs://antonputra-tf-state-staging



<!-- provider -->
you must have gcloud installed

https://www.terraform.io/language/settings/backends/gcs
Warning! It is highly recommended that you enable Object Versioning on the GCS bucket to allow for state recovery in the case of accidental deletions and human error.

gcloud config configurations list
cat ~/.config/gcloud/configurations/config_default
gcloud init
