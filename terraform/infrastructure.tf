provider "digitalocean" {
  token = "${var.digitalocean_api_token}"
}

resource "digitalocean_tag" "awx" {
  name = "awx"
}

resource "digitalocean_droplet" "awx" {
  image    = "debian-9-x64"
  name     = "awx.${var.domain_name}"
  region   = "${var.droplet_region}"
  size     = "${var.droplet_size}"
  ssh_keys = "${var.droplet_ssh_keys}"
  tags     = ["${digitalocean_tag.awx.id}"]
}

resource "digitalocean_record" "awx" {
  domain = "${var.domain_name}"
  type   = "A"
  name   = "awx"
  value  = "${digitalocean_droplet.awx.ipv4_address}"
}
