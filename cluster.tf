module "doks" {
  source = "./modules/doks"

  cluster_name = var.cluster_name
  region       = var.region
  node_size    = var.node_size
  node_count   = var.node_count
}

module "firewall" {
  source = "./modules/firewall"

  # Passando a lista correta de IDs dos nós
  node_pool_ids   = digitalocean_kubernetes_cluster.doks.node_pool[0].nodes[*].id
  cluster_tags    = module.doks.cluster_tags
  allowed_ssh_ips = ["0.0.0.0/0"] # Restringir a IPs específicos
  allowed_api_ips = ["0.0.0.0/0"]
  allowed_http_ips = ["0.0.0.0/0"]
  allowed_https_ips = ["0.0.0.0/0"]
}
