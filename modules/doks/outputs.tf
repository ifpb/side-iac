output "cluster_id" {
  description = "ID do Cluster"
  value       = digitalocean_kubernetes_cluster.doks.id
}

output "kubeconfig" {
  description = "Configuração do kubeconfig"
  value       = digitalocean_kubernetes_cluster.doks.kube_config.0.raw_config
  sensitive   = true
}

output "cluster_tags" {
  description = "Tags aplicadas automaticamente ao cluster DOKS"
  value       = digitalocean_kubernetes_cluster.doks.tags
}
