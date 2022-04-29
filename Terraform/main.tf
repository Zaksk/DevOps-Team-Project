provider "aws" {
  region                   = "eu-west-2"
  alias                    = "aws-uk"
  shared_credentials_files = ["~/.aws/credentials"]
}

module "VNET" {
  source = ".//VNET"

}

module "VM" {
  source       = ".//VM"
  vpc_id_in    = module.VNET.vpc_id_out    // Takes the VPC id from the outputs.tf in the VPC module, and stores it in the variable in the EC2 module.
  subnet_id_in = module.VNET.subnet_id_out // Takes the subnet id from the outputs.tf in the VPC module, and stores it in the variable in the EC2 module.
}

