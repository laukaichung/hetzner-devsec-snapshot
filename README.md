# hetzner-devsec-snapshot

-------------------------

This is a Packer script with Ansible provisioner to build an Ubuntu snapshot based on the [DevSec Hardening Framework](https://github.com/dev-sec/ansible-collection-hardening).

Installation:

1. Create an `inputs.auto.pkvars.hcl` file for your variables. Your Hetzner token is the only variable you must provide.

inputs.auto.pkvars.hcl:

````
hcloud_token = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
````
2. Run `packer build .` to build the image. It should take about half an hour. Be patient.
