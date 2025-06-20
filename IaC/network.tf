resource "cloudstack_network" "tcc-network" {
  name             = "tcc-network"
  cidr             = "192.168.1.0/24"
  network_offering = "917488c4-58aa-432b-970e-d34160244b2a"
  zone             = "e35a3575-e9e5-4ee2-9b09-557da91fa4de"
}
