resource "digitalocean_kubernetes_cluster" "doks" {
  name    = var.cluster_name
  region  = var.region
  version = "1.27.4-do.0"

  maintenance_policy {
    start_time = "02:00"
    day        = "sunday"
  }

  tags = ["k8s", var.cluster_name]
}

resource "digitalocean_kubernetes_node_pool" "workers" {
  cluster_id  = digitalocean_kubernetes_cluster.doks.id
  name        = "worker-pool"
  size        = var.node_size
  node_count  = var.node_count
  auto_scale  = true
  min_nodes   = 2
  max_nodes   = 5
  tags        = ["k8s-nodes"]
}
