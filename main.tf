data "digitalocean_kubernetes_versions" "k8s_1_21_versions" {
  version_prefix = "1.21."
}

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name         = var.kubernetes_cluster_name
  tags         = var.tags
  region       = var.kubernetes_cluster_region
  version      = var.kubernetes_cluster_version != "" ? var.kubernetes_cluster_version : data.digitalocean_kubernetes_versions.k8s_1_21_versions.latest_version
  auto_upgrade = var.kubernetes_cluster_auto_upgrade
  vpc_uuid     = var.kubernetes_cluster_vpc_uuid

  node_pool {
    name       = var.kubernetes_cluster_node_pool_name
    size       = var.kubernetes_cluster_node_pool_size
    auto_scale = true
    min_nodes  = var.kubernetes_cluster_node_pool_min_nodes
    max_nodes  = var.kubernetes_cluster_node_pool_max_nodes
    labels     = {}
    tags       = var.tags
  }
}
