module "aws_vpc" {
  source               = "./modules/network"
  vpc_cidr             = var.vpc_cidr
  public_cidr_subnet_1 = var.public_subnet_cidr_1
  # public_cidr_subnet_2 = var.public_subnet_cidr_2
  az-1                 = var.az-1
  az-2                 = var.az-2
  az-3                 = var.az-3
}

module "aws_security" {
  source   = "./modules/security"
  vpc_cidr = var.vpc_cidr
  vpc_id   = module.aws_vpc.vpc_id
}

module "aws_instances" {
  source                     = "./modules/instances"
  ami                        = var.ami
  instance                   = var.instance
  metatrader_5_sg            = module.aws_security.metatrader_sg
  metatrader_ssh_key         = module.aws_security.ssh_key
  metatrader_public_subnet_1 = module.aws_vpc.public_subnet_1
}
