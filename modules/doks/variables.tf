variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
  default     = "side"
}

variable "node_count" {
  description = "Quantidade de work-nodes"
  type        = number
  default     = 2
}

variable "region" {
  description = "Região do DigitalOcean"
  type        = string
  default     = "nyc3"
}

variable "node_size" {
  description = "Tamanho dos nós workers"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "auto_scale" {
  description = "Define se o auto scaling está ativado"
  type        = bool
  default     = true
}

variable "min_nodes" {
  description = "Número mínimo de nós no cluster quando auto scaling está ativado"
  type        = number
  default     = 2
}

variable "max_nodes" {
  description = "Número máximo de nós no cluster quando auto scaling está ativado"
  type        = number
  default     = 5
}

variable "digitalocean_token" {
  description = "Access Token DigitalOcean"
  type        = string
  sensitive   = true
}