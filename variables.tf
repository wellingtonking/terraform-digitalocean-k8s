variable "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "kubernetes_cluster_region" {
  description = "The region of the Kubernetes cluster"
  type        = string
  default     = "nyc1"
}

variable "kubernetes_cluster_version" {
  description = "The version of the Kubernetes cluster. Defaults to the latest version."
  type        = string
  default     = ""
}

variable "kubernetes_cluster_auto_upgrade" {
  description = "Upgrade the Kubernetes cluster automatically"
  type        = bool
  default     = true
}

variable "kubernetes_cluster_vpc_uuid" {
  description = "The UUID of the VPC to create the Kubernetes cluster in"
  type        = string
}

variable "kubernetes_cluster_node_pool_name" {
  description = "The name of the default node pool to create"
  type        = string
  default     = "default-pool"
}


variable "kubernetes_cluster_node_pool_size" {
  description = "The size of the nodes of the node pool for the Kubernetes cluster"
  type        = string
  default     = "s-2vcpu-2gb"
}

variable "kubernetes_cluster_node_pool_min_nodes" {
  description = "The minimum number of nodes of the node pool for the Kubernetes cluster"
  type        = string
  default     = "1"
}

variable "kubernetes_cluster_node_pool_max_nodes" {
  description = "The maximum number of nodes of the node pool for the Kubernetes cluster"
  type        = string
  default     = "5"
}

variable "tags" {
  type        = list(string)
  description = "Tags to apply to the Kubernetes cluster"
  default     = []
}
