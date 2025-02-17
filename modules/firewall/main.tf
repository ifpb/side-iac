resource "digitalocean_firewall" "k8s_cluster" {
  name = "k8s-cluster-firewall"

  droplet_tag = var.cluster_tag  # Aplicar o firewall a todos os nós do cluster

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

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = var.allowed_http_ips
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = var.allowed_https_ips
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
