data "vsphere_network" "net" {
  name          = "terraform-test-net"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}