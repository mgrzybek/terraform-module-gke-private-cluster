resource "google_service_account" "gke" {
  account_id   = "gke-serviceaccount"
  display_name = "Service Account for GKE cluster"
}

resource "google_container_cluster" "primary" {
  name     = var.gke_name
  location = "europe-west9"

  network    = var.network_id
  subnetwork = var.subnetwork_id

  remove_default_node_pool = true
  initial_node_count       = 1

  deletion_protection = false

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "10.13.0.0/28"
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.11.0.0/21"
    services_ipv4_cidr_block = "10.12.0.0/21"
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = var.master_authorized_cidr
      display_name = "net1"
    }
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = google_container_cluster.primary.name
  location   = "europe-west9"
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    service_account = google_service_account.gke.email

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = "dev"
    }

    machine_type = var.machine_type
    preemptible  = true

    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
