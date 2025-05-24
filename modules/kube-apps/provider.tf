terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.37.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "3.0.0-pre2"
    }
  }
}

provider "kubernetes" {
  # Configuration options
}

provider "helm" {
  # Configuration options
}