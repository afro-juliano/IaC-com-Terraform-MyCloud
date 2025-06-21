resource "cloudstack_firewall" "fw" {
  ip_address_id = cloudstack_ipaddress.public_ip.id

  rule {
    cidr_list = ["0.0.0.0/0"]
    protocol = "tcp"
    ports = ["2222-2224"]
  }
}
