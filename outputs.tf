output "cluster_id" {
  description = "ID do Cluster"
  value       = module.doks.cluster_id
}

output "kubeconfig" {
  description = "Configuração do kubeconfig"
  value       = module.doks.kubeconfig
  sensitive   = true
}

output "firewall_id" {
  description = "ID do firewall"
  value       = module.firewall.firewall_id
}