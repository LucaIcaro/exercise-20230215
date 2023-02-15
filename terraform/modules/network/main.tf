
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>3.19.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs = var.subnet_azs

  private_subnets = []
  public_subnets  = var.public_subnet_cidrs

  public_subnet_tags = {
    Name = var.public_subnet_name
  }

  create_igw = true # this also creates routes
}
