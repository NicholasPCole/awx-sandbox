# `awx-sandbox`

Quickly create and set up an AWX sandbox Droplet.

## Instructions

### Create a Droplet

In this repository's `terraform/` directory:

1. Copy `terraform.tfvars.default` to `terraform.tfvars`.
2. Fill in these variables:
   1. DigitalOcean API token.
   2. Domain name. For example, if you enter `example.com` here, a DNS record will be created for `awx.example.com`. (This also identifies which zone to create the record in.)
   3. The numeric IDs of your Droplet SSH keys. This is an array of integers.
3. Run `terraform apply`.

### Install AWX pre-requisites on the Droplet

In this repository's `ansible/` directory:

1. Run `ansible-playbook setup-sandbox.yml`.

### Install AWX

In the `~/git/awx/installer/` directory on the Droplet:

1. Run `ansible-playbook -i inventory install.yml`.

### Secure AWX

Change the default password, set up a firewall, etc.
