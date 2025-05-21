terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.50.0"
    }
  }
  cloud {
    organization = "side"
    workspaces {
      tags = ["side-iac"]
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}
