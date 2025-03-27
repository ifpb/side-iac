variable "cluster_tags" {
  description = "Lista de tags do cluster DOKS para aplicar o firewall"
  type        = list(string)
  default     = ["k8s-nodes","side"]
}

variable "allowed_ssh_ips" {
  description = "Lista de IPs permitidos para SSH"
  type        = list(string)
}

variable "allowed_api_ips" {
  description = "Lista de IPs permitidos para API do Kubernetes"
  type        = list(string)
}

variable "region" {
  description = "Região do DigitalOcean"
  type        = string
  default     = "nyc3"
}

variable "cluster_id" {
  description = "ID do cluster DOKS"
  type        = string
}

variable "digitalocean_token" {
  description = "Access Token DigitalOcean"
  type        = string
  sensitive   = true
}