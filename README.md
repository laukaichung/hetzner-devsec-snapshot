# hetzner-devsec-snapshot

This is a Packer script with Ansible provisioner to build an Ubuntu snapshot based on the [DevSec Hardening Framework](https://github.com/dev-sec/ansible-collection-hardening).

I use the snapshot as a base image for this Kubernetes dual-stack cluster - [tibordp/terraform-hcloud-dualstack-k8s](https://github.com/tibordp/terraform-hcloud-dualstack-k8s). So far I haven't had any issues with the image.

Installation:

1. Create an `inputs.auto.pkvars.hcl` file for your variables. Your Hetzner token is the only variable you must provide.

inputs.auto.pkvars.hcl:

````
hcloud_token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
````
2. Run `packer build .` to build the image. It should take about half an hour. Be patient.
