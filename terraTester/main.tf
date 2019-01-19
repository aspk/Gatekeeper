provider "http" {}
provider "aws" {
  region = "us-west-2"#TD
}

module "vpc_network" {
  source = "./modules/network/vpc/"
 }
module "internet_gateway" {
  vpc_id = "${module.vpc_network.vpc_id}"
}
module "security_groups" {
  source = "./modules/network/security_groups/"
  vpc_id = "${module.vpc_network.vpc_id}"
}
module "subnets" {
  source = "./modules/network/subnets/"
  vpc_id = "${module.vpc_network.vpc_id}"
}
module "route_tables" {
  source = "./modules/network/route_tables/"
  vpc_id = "${module.vpc_network.vpc_id}"
  igw_id = "${module.igw.igw_id}"
}
module "webservers" {
  source = "./modules/webservers/"
  vpc_id = "${module.vpc_network.vpc_id}"
  public_subnet_id = "${module.subnets.public_subnet_id}"
  sg-ssh_id = "${module.security_groups.sg-ssh_id}" 
  sg-http_id = "${module.security_groups.sg-http_id}" 
  sg-https_id = "${module.security_groups.sg-https_id}" 
}
