output "kubernetes_cluster_id" {
  value       = digitalocean_kubernetes_cluster.kubernetes_cluster.id
  description = "The ID of the Kubernetes cluster"
}

output "kubernetes_cluster_name" {
  value       = digitalocean_kubernetes_cluster.kubernetes_cluster.name
  description = "The name of the Kubernetes cluster"
}

output "kubernetes_cluster_kube_config" {
  sensitive   = true
  value       = digitalocean_kubernetes_cluster.kubernetes_cluster.kube_config
  description = "The kube config of the Kubernetes cluster"
}
