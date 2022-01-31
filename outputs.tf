output "id" {
    description = "The ID of the cluster."
    value = linode_lke_cluster.cluster.id
}

output "status" {
    description = "The status of the cluster."
    value = linode_lke_cluster.cluster.status
}

output "api_endpoints" {
    description = "The endpoints for the Kubernetes API server."
    value = linode_lke_cluster.cluster.api_endpoints
}

output "kubeconfig" {
    description = "The base64 encoded kubeconfig for the Kubernetes cluster."
    value = linode_lke_cluster.cluster.kubeconfig
}

output "pool" {
    description = "Node Pool details."
    value = linode_lke_cluster.cluster.pool
}