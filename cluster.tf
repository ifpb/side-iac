module "doks" {
  source = "./modules/doks"

  cluster_name = var.cluster_name
  region       = var.region
  node_size    = var.node_size
  node_count   = var.node_count
  digitalocean_token = var.digitalocean_token
}

module "firewall" {
  source = "./modules/firewall"

  # Usando a tag "k8s-nodes" para aplicar o firewall aos nós do cluster
  allowed_ssh_ips = ["0.0.0.0/0"] # Restringir a IPs específicos
  allowed_api_ips = ["0.0.0.0/0"]
  allowed_http_ips = ["0.0.0.0/0"]
  allowed_https_ips = ["0.0.0.0/0"]

  digitalocean_token = var.digitalocean_token
  cluster_id = module.doks.cluster_id
  
}