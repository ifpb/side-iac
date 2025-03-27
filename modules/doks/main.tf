resource "digitalocean_kubernetes_cluster" "doks" {
  name    = var.cluster_name
  region  = var.region
  version = "1.27.4-do.0"
  
  node_pool {
    name       = "default-pool"
    size       = var.node_size
    node_count = var.node_count
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
    tags       = ["k8s-nodes"]
  }

  maintenance_policy {
    start_time = "02:00"
    day        = "sunday"
  }

  tags = ["k8s-nodes", var.cluster_name] 
}
