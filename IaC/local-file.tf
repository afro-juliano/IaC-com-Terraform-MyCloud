resource "local_file" "key-tcc_private_key" {
  content         = cloudstack_ssh_keypair.key-tcc.private_key
  filename        = "${path.module}/IaC/key-tcc.key"
  file_permission = "0600"
}
