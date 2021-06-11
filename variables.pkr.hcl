variable "hcloud_token" {
  type      = string
  sensitive = true
  validation {
    condition     = length(var.hcloud_token) > 0
    error_message = <<EOF
The hcloud_token var is not set: make sure to at least set the HCLOUD_TOKEN env var.
To fix this you could also set the hcloud_token variable from the arguments, for example:
$ packer build -var=hcloud_token=something...
EOF
  }
}

variable "root_user"{
  type      = string
  default   = "lkc"
}

variable "server_location"{
  type    = string
  default = "hel1"
}

variable "server_image"{
  type    = string
  default = "ubuntu-20.04"
}

variable "server_type"{
  type    = string
  default = "cx11"
}