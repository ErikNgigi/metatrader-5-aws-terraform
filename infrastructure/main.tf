module "aws_vpc" {
  source               = "./modules/network"
  vpc_cidr             = var.vpc_cidr
  public_cidr_subnet_1 = var.public_subnet_cidr_1
  public_cidr_subnet_2 = var.public_subnet_cidr_2
  az-1                 = var.az-1
  az-2                 = var.az-2
  az-3                 = var.az-3
}
