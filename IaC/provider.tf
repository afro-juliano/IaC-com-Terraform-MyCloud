provider "cloudstack" {
  api_url    = "${var.cloudstack_api_url}"
  api_key    = "${var.cloudstack_api_key}"
  secret_key = "${var.cloudstack_secret_key}"
}

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

