resource "cloudstack_firewall" "firewall_fw" {
  ip_address_id = cloudstack_ipaddress.public_ip.id

  rule {
    cidr_list = ["0.0.0.0/0"]
    protocol  = "tcp"
    ports     = ["80", "443"]
  }
  
  rule {
    cidr_list = ["186.249.196.160/32"]
    protocol  = "tcp"
    ports     = ["2222-2224"]
  }
}
