# hetzner-devsec-snapshot

This is a Packer script with Ansible provisioner to build an Ubuntu snapshot based on the [DevSec Hardening Framework](https://github.com/dev-sec/ansible-collection-hardening).

I use the snapshot as a base image for this Kubernetes dual-stack cluster - [tibordp/terraform-hcloud-dualstack-k8s](https://github.com/tibordp/terraform-hcloud-dualstack-k8s), which is why `net.ipv6.conf.all.forwarding` is set to `1` to support IPV6. 
So far I haven't had any issues with the cluster.

Installation:

1. Create an `inputs.auto.pkvars.hcl` file for your variables. Your Hetzner token is the only variable you must provide.

inputs.auto.pkvars.hcl:

````
hcloud_token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
````
2. Simply run `packer build .` to build the image. You don't even need to manually install the devsec.hardening collection from `Ansible Galaxy`. Packer will do it for you based on the `./ansible/requirements.yaml` file.
   The entire process should take about half an hour. Be patient.