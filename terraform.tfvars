cluster_name   = "side"
region         = "nyc3"
node_size      = "s-2vcpu-4gb"
node_count     = 2

allowed_ssh_ips   = ["0.0.0.0/0"]  # Permite SSH apenas do seu IP específico
allowed_api_ips   = ["0.0.0.0/0"]          # Permite acesso à API do Kubernetes de qualquer IP
allowed_http_ips  = ["0.0.0.0/0"]          # Permite HTTP aberto para qualquer IP
allowed_https_ips = ["0.0.0.0/0"]          # Permite HTTPS aberto para qualquer IP
