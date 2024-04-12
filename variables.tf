variable "network_id" {
  type = string
}
variable "subnetwork_id" {
  type = string
}

variable "master_authorized_cidr" {
  type = string
}

variable "gke_name" {
  type        = string
  description = "Name of the cluster"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}
