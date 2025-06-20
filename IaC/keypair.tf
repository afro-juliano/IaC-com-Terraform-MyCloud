resource "cloudstack_ssh_keypair" "key-tcc" {
  name       = "key-tcc"
  public_key = "${file("~/IaC-com-Terraform-MyCloud/IaC/key-tcc.key")}"
}
