output "firewall_id" {
  description = "ID do firewall criado"
  value       = digitalocean_firewall.k8s_cluster.id
}
