data "vsphere_resource_pool" "pool" {
  name          = "resource-pool-1"
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}