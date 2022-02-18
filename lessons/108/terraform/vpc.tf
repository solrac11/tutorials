# at the end of video show how to impove with map
resource "google_project_service" "compute" {
  # https://console.cloud.google.com/apis/library?project=devops-v4
  # the provider project is used.
  # project = "your-project-id" 
  service = "compute.googleapis.com"
}

resource "google_project_service" "container" {
  # https://console.cloud.google.com/apis/library?project=devops-v4
  # the provider project is used.
  # project = "your-project-id" 
  service = "container.googleapis.com"
}



# Each new project starts with a default VPC network. You can disable the creation of default networks by creating an organization policy with the compute.skipDefaultNetworkCreation constraint. Projects that inherit this policy won't have a default network.

resource "google_compute_network" "main" {
  # don't need if single project
  # project               = "devops-v4" 
  name                            = "main"
  auto_create_subnetworks         = false
  mtu                             = 1460
  routing_mode                    = "REGIONAL"
  delete_default_routes_on_create = false

  depends_on = [
    google_project_service.compute,
    google_project_service.container
    ]
}
