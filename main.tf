resource "linode_lke_cluster" "cluster" {
    label       = var.cluster_label
    k8s_version = var.cluster_k8s_version
    region      = var.cluster_region
    tags        = var.cluster_tags

    pool {
        type  = var.cluster_pool_type
        count = var.cluster_pool_count

        dynamic "autoscaler" {
            for_each = local.autoscaler_settings
            content {
                min = autoscaler.value["min"]
                max = autoscaler.value["max"]
            }
        }
    }
}