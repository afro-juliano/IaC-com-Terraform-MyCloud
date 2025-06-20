resource "cloudstack_instance" "Swarm-01" {
  name             = "Swarm-01"
  service_offering = "2f91d865-1452-4ee1-82ec-d77c17f51f41"
  root_disk_size   = "20"
  template         = "1024fa4c-fbd7-4493-bd4e-f1faa5efb68a"
  network_id       = cloudstack_network.tcc-network.id
  keypair          = cloudstack_ssh_keypair.key-tcc.id
  zone             = "e35a3575-e9e5-4ee2-9b09-557da91fa4de"
  expunge          = true
}
