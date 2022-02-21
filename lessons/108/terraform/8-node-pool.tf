# https://github.com/antonputra/tutorials/blob/main/lessons/069/terraform/7-kubernetes.tf

resource "google_service_account" "k8s" {
  account_id = "kubernetes"
  #   display_name = "Service Account"
}

resource "google_container_node_pool" "general" {
  name       = "general"
  location   = "us-central1"
  cluster    = google_container_cluster.primary.name
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = false
    machine_type = "e2-small"

    labels = {
      role = "general"
    }

    service_account = google_service_account.k8s.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

}
