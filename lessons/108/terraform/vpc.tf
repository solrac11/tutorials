resource "google_project_services" "apis" {
    # https://console.cloud.google.com/apis/library?project=devops-v4
  # the provider project is used.
  # project = "your-project-id" 
  services   = ["compute.googleapis.com"]
}

resource "google_compute_network" "main" {
  # don't need if single project
  # project               = "devops-v4" 
  name                    = "main"
  auto_create_subnetworks = true
  mtu                     = 1460

  depends_on = [google_project_services.apis]
}
