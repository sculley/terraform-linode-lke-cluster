variable "cluster_label" {
    description = "(Required) This Kubernetes cluster's unique label."
    type = string
}

variable "cluster_k8s_version" {
    description = "The desired Kubernetes version for this Kubernetes cluster in the format of major.minor (e.g. 1.21), and the latest supported patch version will be deployed. (Defaults to 1.21)"
    type = string
    default = "1.21"
}

variable "cluster_region" {
    description = "(Required) This Kubernetes cluster's location."
    type = string
}

variable "cluster_tags" {
    description = "(Optional) An array of tags applied to the Kubernetes cluster. Tags are for organizational purposes only."
    type = list(string)
    default = null
}

variable "cluster_pool_type" {
    description = "(Optional) A Linode Type for all of the nodes in the Node Pool. See all node types here. (https://api.linode.com/v4/linode/types) (Defaults to g6-nanode-1)"
    type = string
    default = "g6-nanode-1"
}

variable "cluster_pool_count" {
    description = "(Optional) The number of nodes in the Node Pool. (Defaults to 3)"
    type = number
    default = 3
}

variable "autoscaler_settings_min" {
    description = "(Optional) The minimum number of nodes to autoscale to. Autoscaling is disabled unless this is specified"
    type = number
    default = null
}

variable "autoscaler_settings_max" {
    description = "(Optional) The maxium number of nodes to autoscale to. Autoscaling is disabled unless this is specified"
    type = number
    default = null
}

variable "kube_config_filename" {
    description = "(Optional) The name to use for the kubeconfig file when exporting locally."
    type = string
    default = null
}