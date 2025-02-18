terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.48.2"
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
