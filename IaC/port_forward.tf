resource "cloudstack_port_forward" "port_forward" {
  ip_address_id = cloudstack_ipaddress.public_ip.id

  forward {
    protocol = "tcp"
    private_port = "22"
    public_port = "2222"
    virtual_machine_id = cloudstack_instance.Swarm-01.id
  }

  forward {
    protocol = "tcp"
    private_port = "22"
    public_port = "2223"
    virtual_machine_id = cloudstack_instance.Swarm-02.id
  }

  forward {
    protocol = "tcp"
    private_port = "22"
    public_port = "2224"
    virtual_machine_id = cloudstack_instance.Swarm-03.id
  }
}
