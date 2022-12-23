terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.12.0"
    }
  }
}

provider "vultr" {
  api_key = var.VULTR_API_KEY
  rate_limit = 700
  retry_limit = 3
}

resource "vultr_kubernetes" "k8" {
  region = "sea"
  label = "hjm"
  version = "v1.24.8+1"
  
  node_pools {
    node_quantity = 1
    plan = "vc2-2c-4gb"
    label = "hjm"
    auto_scaler = false
    min_nodes = 1
    max_nodes = 1
  }
}