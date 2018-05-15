terraform {
  backend "artifactory" {
    shared_credentials_file = "${var.terraform_credentials_file}" 
    #username = "pedro.aguiar"
    #password = "VcEhUmBabaca"
    url      = "https://url.com.br/artifactory"
    repo     = "terraform"
    subpath  = "financeiro"
  }
}
provider "vsphere" {
  shared_credentials_file = "${var.terraform_credentials_file}"
  #user           = "${var.vsphere_user}"
  #password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
}


module "datacenter" {
   source = "./modules/datacenter"
   project-name = "${var.project-name}"
}

module "datastore" {
   source = "./modules/datastore"
   project-name = "${var.project-name}"
}

module "resource_pool" {
   source = "./modules/resource_pool"
   project-name = "${var.project-name}"
}

module "network" {
   source = "./modules/network"
   project-name = "${var.project-name}"
}

module "template" {
   source = "./modules/template"
   project-name = "${var.project-name}"
}

module "vms" {
   source = "./modules/vms"
   project-name = "${var.project-name}"
}


