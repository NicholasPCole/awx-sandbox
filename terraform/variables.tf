variable "digitalocean_api_token" {
  type        = "string"
  description = "Token used to connect to the DigitalOcean API."
}

variable "domain_name" {
  type        = "string"
  description = "The domain name (zone) to use for DNS records."
}

variable "droplet_region" {
  type        = "string"
  description = "The region to create Droplets with."
  default     = "nyc1"
}

variable "droplet_size" {
  type        = "string"
  description = "The size of Droplet to create."
  default     = "s-2vcpu-4gb"
}

variable "droplet_ssh_keys" {
  type        = "list"
  description = "Numeric IDs of the SSH key(s) to insert from your account."
}
