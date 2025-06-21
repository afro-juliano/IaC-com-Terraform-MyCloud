resource "cloudstack_egress_firewall" "egress_fw" {
  network_id = cloudstack_network.tcc-network.id

  rule {
    cidr_list   = ["192.168.1.0/24"]
    protocol    = "all"
  }
}
