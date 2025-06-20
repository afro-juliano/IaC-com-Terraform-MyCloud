resource "cloudstack_firewall" "default" {
  ip_address_id = cloudstack_ipaddress.public_ip.id

  rule {
    cidr_list = ["192.168.1.0/24"]
    protocol = "all"
  }
}
