Examples

- deploy something to cluster to trigger autoscalling (test autoscalling)
- Use Workload Identity - access for pods using identeties, gs bucket
- deploy public and private load balancers
- deploy ingress with grafana (maybe)
- firewalls (maybe jenkins example wants to do something)
- show here to find logs and metrics if enabled
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

<!-- vpc.tf -->
# at the end of video show how to impove with map enabling services for projects (compute/container) same with secondary subnets
show how to use local variables
# the provider project is used.
# project = "your-project-id" 
# Each new project starts with a default VPC network. You can disable the creation of default networks by creating an organization policy with the compute.skipDefaultNetworkCreation constraint. Projects that inherit this policy won't have a default network.
# recommend manuall if you need to whitelist for nat

# https://cloud.google.com/kubernetes-engine/docs/concepts/types-of-clusters#zonal_clusters

show autoscalling how it works on spot
use case with service accounts and firewals, for example private load balancers





# How to Use Built-in GKE Ingress?
https://cloud.google.com/kubernetes-engine/docs/concepts/ingress

# Deploy Nginx Ingress Controller to GKE Cluster



kubectl exec -n staging -it gcloud-7f5b44dfbd-829k9 -- bash
gcloud alpha storage ls