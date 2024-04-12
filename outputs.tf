output "cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}


output "client_key" {
  value     = google_container_cluster.primary.master_auth.0.client_key
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
  sensitive = true
}

output "cluster_service_account" {
  value = google_service_account.gke 
}
