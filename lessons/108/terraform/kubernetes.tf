# https://cloud.google.com/kubernetes-engine/docs/concepts/types-of-clusters#zonal_clusters

resource "google_container_cluster" "primary" {
  name                     = "primary"
  location                 = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.main.self_link
  subnetwork               = google_compute_subnetwork.private.self_link
  logging_service          = "logging.googleapis.com/kubernetes"
  monitoring_service       = "monitoring.googleapis.com/kubernetes"
  networking_mode          = "VPC_NATIVE"

  release_channel {
    channel = "REGULAR"
  }

  workload_identity_config {
    workload_pool = "devops-v4.svc.id.goog"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "k8s-pod-range"
    services_secondary_range_name = "k8s-service-range"
  }

# jenkins use case
#   master_authorized_networks_config {
#     cidr_blocks {
#       cidr_block   = "10.0.0.0/18"
#       display_name = "private-subnet-w-jenkins"
#     }
#   }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }
}
