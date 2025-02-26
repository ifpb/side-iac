resource "digitalocean_kubernetes_cluster" "doks" {
  name    = var.cluster_name
  region  = var.region
  version = "1.27.4-do.0"

  maintenance_policy {
    start_time = "02:00"
    day        = "sunday"
  }

  tags = ["k8s", var.cluster_name]
  node_pool {
    name       = "worker-pool"
    size       = var.node_size
    node_count = var.node_count
  }

}