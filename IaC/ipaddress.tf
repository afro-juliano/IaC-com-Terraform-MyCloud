resource "cloudstack_ipaddress" "public_ip" {
  network_id = cloudstack_network.tcc-network.id
}
