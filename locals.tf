locals {
    autoscaler_settings = var.cluster_autoscaler_min && var.cluster_autoscaler_max ? tomap({"min": var.cluster_autoscaler_min, "max": var.cluster_autoscaler_max}) : {}
}