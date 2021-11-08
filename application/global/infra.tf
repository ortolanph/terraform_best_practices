module "my_vpc" {
  source = "../modules/vpc"

  region = var.region
}

module "my_ec2" {
  source = "../modules/ec2"

  ami_id = var.ami_id
  subnets = module.my_vpc.public_subnets
  vpc_id = module.my_vpc.vpc_id
}