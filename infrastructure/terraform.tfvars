cluster_name   = "side"
region         = "nyc3"
node_size      = "s-2vcpu-4gb"
node_count     = 2

allowed_ssh_ips   = ["187.64.121.155/32"]  # Permite SSH apenas do seu IP específico
allowed_api_ips   = ["187.64.121.155/32"]          # Permite acesso à API do Kubernetes de qualquer IP
