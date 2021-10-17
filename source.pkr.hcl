source "hcloud" "base" {
  image           = var.server_image
  location        = var.server_location
  server_type     = var.server_type
  ssh_username    = "root"
  snapshot_labels = {
    name = "base"
  }
  snapshot_name   = "base"
  token           = var.hcloud_token

}

