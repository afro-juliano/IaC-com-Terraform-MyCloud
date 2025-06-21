resource "cloudstack_ssh_keypair" "key-tcc" {
  name        = "key-tcc"
}

resource "local_file" "key-tcc_private_key" {
  content         = cloudstack_ssh_keypair.key-tcc.private_key
  filename        = "${path.module}/key-tcc.key"
  file_permission = "0600"
}
