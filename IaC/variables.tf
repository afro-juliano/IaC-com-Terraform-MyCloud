variable "cloudstack_api_url" {
  description = "API URL"
  type        = string
}

variable "cloudstack_api_key" {
  description = "API KEY"
  type        = string
  sensitive   = true
}

variable "cloudstack_secret_key" {
  description = "SECRET KEY"
  type        = string
  sensitive   = true
}
