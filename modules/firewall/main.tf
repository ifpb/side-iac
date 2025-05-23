resource "digitalocean_firewall" "k8s_cluster" {
  name = "k8s-cluster-firewall"

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = var.allowed_ssh_ips
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "6443"
    source_addresses = var.allowed_api_ips
  }

}