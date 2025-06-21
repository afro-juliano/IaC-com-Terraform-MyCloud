terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
    cloudstack = {
      source = "cloudstack/cloudstack"
      version = "0.5.0"
    }
  }
}
