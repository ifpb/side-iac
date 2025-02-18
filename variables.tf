variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
}

variable "region" {
  description = "Região do DigitalOcean"
  type        = string
}

variable "node_size" {
  description = "Tamanho dos nós workers"
  type        = string
}

variable "node_count" {
  description = "Número de nós workers"
  type        = number
}

variable "allowed_ssh_ips" {
  description = "Lista de IPs permitidos para SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # 
}

variable "allowed_api_ips" {
  description = "Lista de IPs permitidos para API do Kubernetes"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # 
}

variable "allowed_http_ips" {
  description = "Lista de IPs permitidos para HTTP"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # 
}
   
variable "allowed_https_ips" {
  description = "Lista de IPs permitidos para HTTPS"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # 
}

variable "digitalocean_token" {
  description = "Access Token DigitalOcean"
  type        = string
  sensitive   = true
}