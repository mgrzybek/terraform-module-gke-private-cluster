# GKE cluster deployment

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.primary](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_container_node_pool.primary_nodes](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool) | resource |
| [google_service_account.gke](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_name"></a> [gke\_name](#input\_gke\_name) | Name of the cluster | `string` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"e2-medium"` | no |
| <a name="input_master_authorized_cidr"></a> [master\_authorized\_cidr](#input\_master\_authorized\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | n/a | `string` | n/a | yes |
| <a name="input_subnetwork_id"></a> [subnetwork\_id](#input\_subnetwork\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | n/a |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | n/a |
| <a name="output_cluster_host"></a> [cluster\_host](#output\_cluster\_host) | GKE Cluster Host |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | GKE Cluster Name |
| <a name="output_cluster_service_account"></a> [cluster\_service\_account](#output\_cluster\_service\_account) | n/a |
