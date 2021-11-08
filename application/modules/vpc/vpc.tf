module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-internal-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${var.region}a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    project_name = "terraform_best_practices"
  }
}