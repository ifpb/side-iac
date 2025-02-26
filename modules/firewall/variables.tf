variable "cluster_tags" {
  description = "Lista de tags do cluster DOKS para aplicar o firewall"  
}
variable "node_pool_ids" {
  description = "Lista de IDs dos nós do cluster"
  type        = list(string)
}

variable "allowed_ssh_ips" {
  description = "Lista de IPs permitidos para SSH"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}

variable "allowed_api_ips" {
  description = "Lista de IPs permitidos para API do Kubernetes"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}

variable "allowed_http_ips" {
  description = "Lista de IPs permitidos para HTTP"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}

variable "allowed_https_ips" {
  description = "Lista de IPs permitidos para HTTPS"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}
